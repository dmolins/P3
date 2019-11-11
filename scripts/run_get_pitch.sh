#!/bin/bash

# Put here the program (maybe with path), and the directory with the database
#GETF0=/Users/dmolins/Desktop/david/uni/3B/PAV/lab/p3/src/get_pitch/get_pitch
GETF0=get_pitch
PITCH_DB=/Users/dmolins/Desktop/david/uni/3B/PAV/lab/p3/pitch_db

for fwav in $PITCH_DB/train/*.wav; do
    echo "$fwav ----"
    ff0=${fwav/.wav/.f0}
    $GETF0 $fwav $ff0 > /dev/null || (echo "Error in $GETF0 $fwav $ff0"; exit 1)
done

exit 0
