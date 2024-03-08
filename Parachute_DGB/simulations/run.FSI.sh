#!/bin/bash


NF=200
NS=96

# run simulation
mpirun -n $NF aerof.opt FluidFile.FSI : -n $NS aeros -d ../sources/SowerFile.optDec StructureFile.FSI
