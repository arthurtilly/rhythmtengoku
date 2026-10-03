import json

map = open("build/rhythmtengoku.map").read().split("\n")

l = 0

def skip_to_next_section():
    global l
    while True:
        if l >= len(map) or map[l].startswith(" build/") or map[l].startswith(" *lib"):
            break
        l += 1

ASM_FOLDER_EXCEPTIONS = {
    "affine_param": "code_08001360",
    "backdrop": "code_08003980",
    "bitmap_font": "code_08003980",
    "graphics_table": "code_08001360",
    "text_printer": "code_080092cc",
    "drum_intro": "engines/drumming_lessons",
    "drum_studio": "engines/drumming_lessons",
    "midi": "lib_midi",
}

units = {}
unit_functions = {}
units_order = []

skip_to_next_section()

while l < len(map):
    path = map[l].split("(")[0].strip()
    if path.endswith(".s.o") or path.startswith("*lib"):
        l+=1
        skip_to_next_section()
        continue

    name = path.split(".")[0]
    section = map[l].split("(")[1].split(")")[0].strip("*")

    if name not in units_order:
        units_order.append(name)

    units[name] = units.get(name, {
        "total_code": 0,
        "matched_code": 0,
        "total_data": 0,
        "total_functions": 0,
        "matched_functions": 0,
        "complete_code": 0,
        "complete_data": 0,
        "total_units": 1,
        "complete_units": 0
    })
    unit_functions[name] = unit_functions.get(name, [])

    is_code = section == ".text"
    l+=1

    while l < len(map) and not (map[l].startswith(" build/") or map[l].startswith(" *lib")):
        # TODO: rodata
        if map[l] == "":
            break
        elif (map[l].startswith(" *fill*")
            or (map[l].startswith("  ") and section != ".text")
            or (map[l].startswith(" .") and section == ".text")):
            l+=1
            continue
        elif (section == ".rodata" or section.startswith(".script")) and map[l].find("0x") == -1:
            l+=1

        if not is_code:
            data_count = int(map[l].split("0x")[2].split(" ")[0],16)
            # all data has been decompiled
            # if anyone wants to take this for another similar decomp, or for another rev, feel free to
            units[name]["total_data"] += data_count
            units[name]["matched_data"] = units[name]["complete_data"] = units[name]["total_data"]
        else:
            fn_name = map[l].split(" ")[-1]
            fn_start = int(map[l].split("0x")[1].split(" ")[0],16)

            exception = None

            for k, v in ASM_FOLDER_EXCEPTIONS.items():
                if name.find(k) != -1:
                    exception = v
                    break
            
            if exception != None:
                asm_file = "asm/" + exception + "/asm_0" + hex(fn_start)[2:] + ".s"
            else:
                asm_file = "asm/" + "/".join(name.split("/")[2:]) + "/asm_0" + hex(fn_start)[2:] + ".s"
            
            try:
                open(asm_file)
                decompd = False
            except FileNotFoundError:
                decompd = True
                units[name]["matched_functions"] += 1

            # this assumes there is only one executable section
            if len(unit_functions[name]) >= 1:
                unit_functions[name][-1]["end"] = fn_start

            unit_functions[name].append({"name": fn_name, "start": fn_start, "end": 0, "complete": decompd})

        l += 1

    if section == ".text":
        unit_functions[name][-1]["end"] = int(map[l+1].split("0x")[1].split(" ")[0], 16)

    skip_to_next_section()

report = {}

report["measures"] = {
    "total_code": 0,
    "matched_code": 0,
    "total_data": 0,
    "total_functions": 0,
    "matched_functions": 0,
    "complete_code": 0,
    "complete_data": 0,
    "total_units": 0,
    "complete_units": 0
}
report["units"] = []
report["version"] = 2 # same as dsd
report["categories"] = [] # unused for this

for unit_name in units_order:
    unit = units[unit_name]
    functions = unit_functions[unit_name]

    unit["total_functions"] = len(functions)

    for function in functions:
        function["size"] = function["end"] - function["start"]

        unit["total_code"] += function["size"]

        if function["complete"]:
            function["fuzzy_match_percent"] = 100.0
            unit["matched_code"] += function["size"]
            unit["complete_code"] += function["size"]
        else:
            function["fuzzy_match_percent"] = 0.0

        function.pop("start")
        function.pop("end")
        function.pop("complete")

    if unit["total_code"] != 0:
        unit["matched_code_percent"] = unit["matched_code"] / unit["total_code"] * 100
        unit["complete_code_percent"] = unit["complete_code"] / unit["total_code"] * 100
        unit["matched_functions_percent"] = unit["matched_functions"] / unit["total_functions"] * 100
        unit["fuzzy_match_percent"] = unit["matched_code_percent"] # no fuzzy matches in this decomp
    else:
        unit["matched_code_percent"] = 0.0
        unit["complete_code_percent"] = 0.0
        unit["matched_functions_percent"] = 0.0
        unit["fuzzy_match_percent"] = 0.0

    if unit["total_data"] != 0:
        unit["complete_data_percent"] = unit["complete_data"] / unit["total_data"] * 100
    else:
        unit["complete_data_percent"] = 0.0

    report["measures"]["total_units"] += 1

    if unit["total_code"] == unit["complete_code"] and unit["total_data"] == unit["complete_data"]:
        unit["complete_units"] = 1
        report["measures"]["complete_units"] += 1
    else:
        unit["complete_units"] = 0

    report["measures"]["total_code"] += unit["total_code"]
    report["measures"]["matched_code"] += unit["matched_code"]
    report["measures"]["complete_code"] += unit["complete_code"]
    report["measures"]["total_functions"] += unit["total_functions"]
    report["measures"]["matched_functions"] += unit["matched_functions"]
    report["measures"]["total_data"] += unit["total_data"]
    report["measures"]["complete_data"] += unit["complete_data"]

    report["units"].append({
        "name": unit_name,
        "measures": unit,
        "sections": [],
        "functions": functions,
    })
#TODO: remove if/else
if report["measures"]["total_code"] != 0:
    report["measures"]["matched_code_percent"] = report["measures"]["matched_code"] / report["measures"]["total_code"] * 100
    report["measures"]["complete_code_percent"] = report["measures"]["complete_code"] / report["measures"]["total_code"] * 100
    report["measures"]["matched_functions_percent"] = report["measures"]["matched_functions"] / report["measures"]["total_functions"] * 100
    report["measures"]["fuzzy_match_percent"] = report["measures"]["matched_code_percent"] # no fuzzy matches in this decomp
else:
    report["measures"]["matched_code_percent"] = 0.0
    report["measures"]["complete_code_percent"] = 0.0
    report["measures"]["matched_functions_percent"] = 0.0
    report["measures"]["fuzzy_match_percent"] = 0.0
report["measures"]["complete_data_percent"] = report["measures"]["complete_data"] / report["measures"]["total_data"] * 100

json.dump(report, open("report.json", "w"), indent=2)