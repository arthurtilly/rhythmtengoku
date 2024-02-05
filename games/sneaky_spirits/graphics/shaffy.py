import sys
import os

def remove_file_extension(file_path):
    base_name = os.path.basename(file_path)
    name_without_extension, _ = os.path.splitext(base_name)
    return name_without_extension

def copy_from_end(source_file):
    try:
        with open(source_file, 'r') as source:
            lines = source.readlines()
            lines_to_linker = []

            while(True):
                # Find the index where "// // //" appears
                marker_index = len(lines) - 1
                while marker_index >= 0 and not lines[marker_index].startswith("// // //"):
                    marker_index -= 1

                # Check if the marker was found
                if marker_index >= 0:
                    # Copy lines from the marker to the end of the file
                    content_to_copy = lines[marker_index:]
                    
                    output_file_name = remove_file_extension(source_file) + "_" + (content_to_copy[0][12:20]).lower() + ".c"

                    # Write the content to the destination file
                    with open(output_file_name, 'w') as destination:
                        destination.write("#include \"global.h\"\n")
                        destination.write("#include \"graphics.h\"\n")
                        destination.write("\n")
                        destination.writelines(content_to_copy)
                        
                    lines = lines[:marker_index]
                    lines_to_linker.append(remove_file_extension(source_file) + "_" + (content_to_copy[0][12:20]).lower())

                    print("Content copied successfully.")
                else:
                    print("Marker not found in the file.")
                    break
                    
            with open("linker.txt", 'w') as linker:
                revlines_to_linker = reversed(lines_to_linker)
                for item in revlines_to_linker:
                    linker.write(item + "\n")
                

    except Exception as e:
        print(f"An error occurred: {e}")
        
if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python shaffy.py c_source_file")
        sys.exit(1)

    source_file = sys.argv[1]

    copy_from_end(source_file)