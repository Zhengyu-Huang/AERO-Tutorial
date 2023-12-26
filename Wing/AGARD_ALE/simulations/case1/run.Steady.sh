#!/bin/bash

NF=8

mpirun -N $NF aerof.opt FluidFile.Steady |& tee log.Steady.out

sower -fluid -merge -con ../../data/OUTPUT.con -mesh ../../data/OUTPUT.msh \
	-result results.Steady/Mach.bin -output postpro.Steady/Mach
    
sower -fluid -merge -con ../../data/OUTPUT.con -mesh ../../data/OUTPUT.msh \
	-result results.Steady/Pressure.bin -output postpro.Steady/Pressure
    
sower -fluid -merge -con ../../data/OUTPUT.con -mesh ../../data/OUTPUT.msh \
	-result results.Steady/PressureCoefficient.bin -output postpro.Steady/PressureCoefficient


xp2exo ../../sources/fluid.top fluid_solution.Steady.exo \
                   ../../sources/fluid.top.dec.${NF} \
                   postpro.Steady/Mach.xpost postpro.Steady/Pressure.xpost \
                   postpro.Steady/PressureCoefficient.xpost
                   


