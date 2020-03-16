cdef class TestClass2Cython:
    cdef TestClass2* ptr

    def __cinit__(self):
        self.ptr = new TestClass2()

    def __deadaloc(self):
        del self.ptr