unset prev_server
while read line; do
server=$(<<< "${line}" cut -d, -f1)
project=$(<<< "${line}" cut -d, -f2)
version=$(<<< "${line}" cut -d, -f3)
 
if [[ "${server}" != "${prev_server}" ]]; then
echo "${server}  ================="
fi
echo -e "Project: \t ${project}
Version: \t ${version}\n"
prev_server="${server}"
done < $1