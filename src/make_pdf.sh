#!/bin/bash
#
# Make useful QA outputs with fsleyes
# https://users.fmrib.ox.ac.uk/~paulmc/fsleyes/userdoc/latest/command_line.html

project=TESTPROJ
subject=TESTSUBJ
session=TESTSESS
scan=TESTSCAN

dwi_file=DTI_resort.nii.gz
bval_file=DTI_resort.bval
bvec_file=DTI_resort.bvec

# 3-pane view
fsleyes render \
  --scene ortho --hideCursor --layout grid \
  --outfile ortho.png --size 1000 1000 \
  "${dwi_file}" \
  --interpolation linear


# Convert to PDF

info="dwi_reorder\n${project} ${subject} ${session} ${scan}"
bval=`cut -d " " -f 1-8 "${bval_file}"`
bvec=`cut -d " " -f 1-8 "${bvec_file}"`

convert \
-size 1224x1584 xc:white \
-gravity center \( ortho.png -resize 1000x1000 \) -geometry +0-150 -composite \
-gravity center -pointsize 24 -annotate +0-670 "First volume of output" \
-gravity SouthEast -pointsize 24 -annotate +20+20 "$(date)" \
-gravity NorthWest -pointsize 24 -annotate +20+20 "${info}" \
-gravity SouthWest -pointsize 24 -annotate +20+200 \
"First b values:\n$bval\n\nFirst b vectors:\n$bvec" \
page.png

