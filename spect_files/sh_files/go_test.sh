#!/bin/bash

module load Anaconda3/2019.10; 
cpus_per_task=3
srun -t 120 -N 1 -p serial_requeue --cpus-per-task=$cpus_per_task --mem-per-cpu=6gb  bash -c "python execute_test.py 0 $cpus_per_task" & #-c 30 -N 1 


#srun  -t 5760  -n 16 -p shared --mem=64gb bash -c "python execute.py '$x'" & 
#-N 1 -t 9000 --mem 124gb -n 20 bash -c "python execute.py '$x'" & #--cpus-per-task=32 -p shared 


#module load Anaconda3/2019.10; 
# 
#-c, --cpus-per-task=
#module load Anaconda3/2019.10; 
#srun -t 10000 --mem 300000 -p bigmem -n 12 bash -c "python execute.py '$1'" &

### best guess at original code:



#!/bin/bash
# --export=ALL
# -N 1 
# -p shared                          # partition (queue)
# -n 25                              # number of cores                 
# --mem 150gb                        # memory
# -t 7-0:00                          # time (D-HH:MM)
# -o myscript_%j_output.out          # STDOUT
# --mail-type=END                    # notifications for job done