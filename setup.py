from setuptools import setup, Extension, find_packages
from Cython.Build import cythonize
from Cython.Distutils import build_ext
from distutils import sysconfig

ext_modules = [
    Extension(
        "my_library", sources=[
            "./cython/my_library.pyx",
            "./cpp_library/TestClass1.cpp"
        ],
        language="c++"
    )
]

setup(
    name = "my_library",
    cmdclass = {"build_ext": build_ext},
    ext_modules= cythonize(ext_modules)
)