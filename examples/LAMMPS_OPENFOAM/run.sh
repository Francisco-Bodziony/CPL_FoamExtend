
cd openfoam
python clean.py -f
blockMesh
decomposePar
cd ../

cplexec -c 1 "CPLIcoFoam -case ./openfoam -parallel" -m 1 "lmp_cpl -i lammps.in" 

