#!/bin/bash     
#Jacob Park

if [[ $# -ne 1 ]]
then
	echo "Usage: RegexAnswers.sh filename"
else 
	egrep -x '.+[0-9]\>' $* | wc -l
	grep -v '\<[AEIOUeaiou]' $* | wc -l
	egrep '[A-Za-z]{12}' $* | egrep -v '.{13}' | wc -l
	egrep '[0-9]{3}-[0-9]{3}-[0-9]{4}' $* | wc -l
	egrep '303-[0-9]{3}-[0-9]{4}' $* | wc -l
	egrep -x '\<[AEIOUaeaiou].*[0-9]\>' $* | wc -l
	egrep '.+geocities.com\>' $* | wc -l
	egrep '@' $* | egrep -v .+@.+[\.].+ | wc -l
fi
