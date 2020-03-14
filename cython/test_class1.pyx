import cython
cimport cython

cdef class TestClass1Cython:
    cdef TestClass1* ptr

    def __cinit__(self):
        self.ptr = new TestClass1()

    def __deadaloc(self):
        del self.ptr

    def test_function1_cython(self):
        self.ptr.test_function1()