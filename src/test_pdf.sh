#!/bin/bash
which make_pdf.sh
xvfb-run -n $(($$ + 99)) -s '-screen 0 1600x1200x24 -ac +extension GLX' \
make_pdf.sh \
--project TESTPROJ \
--subject TESTSUBJ \
--session TESTSESS \
--scan TESTSCAN \
--dwi_file /OUTPUTS/DTI_resort.nii.gz \
--bval_file /OUTPUTS/DTI_resort.bval \
--bvec_file /OUTPUTS/DTI_resort.bvec \
--outdir /OUTPUTS

