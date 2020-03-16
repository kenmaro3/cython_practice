import cython
cimport cython

include "test_class1.pyx"
include "test_class2.pyx"

def test():
    return TestClass1Cython()

