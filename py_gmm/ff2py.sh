f2py3 -m gmm -h gmm.pyf kinds.f90 datatypes.f90 operators.f90 shared_data.f90 basicsubs.f90 gmmsubs.f90 sing_part.f90 vec_trans.f90 local_field.f90 linear_solver.f90 
f2py3 -c -lopenblas --build-dir ./tmp --f90exec=/usr/bin/gfortran --fcompiler=gnu95 --f90flags='-O3 -fpic -m64' gmm.pyf kinds.f90 datatypes.f90 operators.f90 shared_data.f90 basicsubs.f90 gmmsubs.f90 sing_part.f90 vec_trans.f90 local_field.f90 linear_solver.f90
