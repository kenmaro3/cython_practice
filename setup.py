from setuptools import setup, Extension,find_packages
from Cython.Build import cythonize
from Cython.Distutils import build_ext
from distutils import sysconfig

ext_modules = [
   Extension(
	"my_library", sources=["./cython/my_library.pyx",
           "./cpp_library/TestClass1.cpp"
                       ],
           libraries=["gmp"],
           library_dirs=["/usr/local/lib", "/usr/local/gmp/6_1_2/lib"],
           include_dirs=["/usr/local/gmp/6_1_2/include"],
           language="c++",
           extra_compile_args=['-std=c++1z',"-lgmp"]
    ),
    ]

setup(
    name = 'my_library',
    cmdclass = {'build_ext': build_ext},
    ext_modules = cythonize(ext_modules)
)