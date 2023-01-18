file=$(cat $1)

for line in $file; do
    sed -ie "s/_$line:/branch_0$line:\n/g" $2
done