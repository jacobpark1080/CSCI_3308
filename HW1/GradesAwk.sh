#!/bin/bash	
#Jacob Park

if [[ $# -ne 1 ]]
then
	echo "Usage: GradesAwk.sh filename"
else
	sort -k3 $*|awk '{for(i=3;i<=NF;i++)j+=$i;print j/(NF-3),"[",$1,"]", $3,", ",$2;j=0}'

fi
