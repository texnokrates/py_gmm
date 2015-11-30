f2py3 -m gaunt -h gaunt.pyf kinds.f90 vec_trans.f90 only: gaunt_xu gaunt_cz
f2py3 -c -lopenblas --build-dir ./tmp --f90exec=/usr/bin/gfortran --fcompiler=gnu95 --f90flags="-O2 -fpic -m64" gaunt.pyf kinds.f90 datatypes.f90 operators.f90 shared_data.f90 basicsubs.f90 gmmsubs.f90 sing_part.f90 vec_trans.f90 local_field.f90 linear_solver.f90
