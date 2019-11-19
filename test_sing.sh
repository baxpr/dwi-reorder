#!/bin/bash

#xvfb_opts="-n $(($$ + 99)) -s '-screen 0 1600x1200x24 -ac +extension GLX'"

singularity run \
--cleanenv \
--bind INPUTS:/INPUTS \
--bind OUTPUTS:/OUTPUTS \
test.simg \
--project TESTPROJ \
--subject TESTSUBJ \
--session TESTSESS \
--scan TESTSCAN \
--dwi_niigz /INPUTS/DTI.nii.gz \
--bval_txt /INPUTS/DTI.bval \
--bvec_txt /INPUTS/DTI.bvec \
--outdir /OUTPUTS


