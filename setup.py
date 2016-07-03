from setuptools import setup


from numpy.distutils.core import Extension, setup

fortran_ext_gmm = Extension(name = 'gmm', 
        sources=['py_gmm/gmm.pyf',
            'py_gmm/kinds.f90',
            'py_gmm/datatypes.f90',
            'py_gmm/operators.f90', 
            'py_gmm/shared_data.f90', 
            'py_gmm/basicsubs.f90',
            'py_gmm/gmmsubs.f90',
            'py_gmm/sing_part.f90',
            'py_gmm/vec_trans.f90',
            'py_gmm/local_field.f90',
            'py_gmm/linear_solver.f90',
#            'py_gmm/gmm_f2py_module.f90',
            ],
        )

setup(name='py_gmm',
      version='0.01-mmn',
      description='Generalized Multiparticle Mie theory code for plasmonics',
      url='http://github.com/texnokrates/py_gmm',
      author='Flying Circus',
      author_email='johndoe@johndoe.com',
      license='GPLv3',
      packages=['py_gmm'],
      ext_modules = [fortran_ext_gmm,],
      install_requires=['numpy',],
      zip_safe=False)
