#!/bin/bash

# FSL setup
#export FSLDIR=/usr/local/fsl
#. ${FSLDIR}/etc/fslconf/fsl.sh
#export PATH=${FSLDIR}/bin:${PATH}

# Run pipeline in xvfb
xvfb-run --server-num=$(($$ + 99)) \
	--server-args='-screen 0 1600x1200x24 -ac +extension GLX' \
	pipeline.sh "$@"
