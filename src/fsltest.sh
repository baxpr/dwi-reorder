#!/bin/bash

rm test.png

# Works
xvfb-run -n $(($$ + 99)) -s '-screen 0 1600x1200x24 -ac +extension GLX' \
  fsleyes render \
    --scene ortho --hideCursor --layout grid \
    --outfile test.png --size 1000 1000 \
    /OUTPUTS/DTI_resort.nii.gz \
    --interpolation linear

# Works
#xvfb-run -n $(($$ + 99)) -s '-screen 0 1600x1200x24 -ac +extension GLX' \
#fsleyes render --outfile test.png \
#--scene ortho --hideCursor --layout grid \
#/OUTPUTS/DTI_resort.nii.gz

# Works
#fsleyes render -of test.png /OUTPUTS/DTI_resort.nii.gz
