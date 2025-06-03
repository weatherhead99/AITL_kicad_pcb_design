#!/usr/bin/bash

declare -a branchNames=("incomplete_schem"
			"schematic_complete"
			"blank_PCB"
			"ready_to_route"
		       "pcb_complete")

declare -a fileNames=("schem_proj_nofrontend"
		      "schem_proj_complete"
		      "pcb_proj_blank"
		      "pcb_proj_noroute"
		     "pcb_proj_complete")

declare -i nbranches=${#branchNames[@]}
declare -i n=$(( $nbranches -1 ))
echo "number of branches: ${nbranches}"
echo "iteration max: ${n}"


mkdir proj_exports &> /dev/null

for i in `seq 0 ${n}`
do
    branchname=${branchNames[i]}
    fileName="${fileNames[i]}.zip"
    echo "branchname: ${branchname}, filename: ${fileName}"
    git archive --format zip ${branchname} -o proj_exports/${fileName}
done
