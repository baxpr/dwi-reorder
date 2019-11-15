singularity shell \
--cleanenv \
--bind INPUTS:/INPUTS \
--bind OUTPUTS:/OUTPUTS \
--bind `pwd`:/wkdir \
baxpr-dwi-reorder-master-v1.0.0.simg
