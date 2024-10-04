#!/bin/tcsh

# Check if a memory argument was provided, otherwise default to 16G
set MEMORY = "$1"
if ("$MEMORY" == "") then
    set MEMORY = "16G"
endif

# Submit the job with the specified or default memory
srun --mem=$MEMORY --gpus=1 -p pt --mail-type=ALL /speed-scratch/$USER/speed-hpc/src/jupyterlabs/run_jupyterlab.sh

