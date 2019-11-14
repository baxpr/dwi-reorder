#!/bin/bash
singularity run \
--cleanenv \
--bind INPUTS:/INPUTS \
--bind OUTPUTS:/OUTPUTS \
baxpr-dwi-reorder-master-v1.0.0.simg \
--project TESTPROJ \
--subject TESTSUBJ \
--session TESTSESS \
--scan TESTSCAN \
--dwi_niigz /INPUTS/DTI.nii.gz \
--bval_txt /INPUTS/DTI.bval \
--bvec_txt /INPUTS/DTI.bvec \
--outdir /OUTPUTS
