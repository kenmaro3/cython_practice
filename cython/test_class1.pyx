import cython
cimport cython

from test_class2 cimport *

cdef class TestClass1Cython:
    cdef TestClass1* ptr

    def __cinit__(self):
        self.ptr = new TestClass1()

    def __deadaloc(self):
        del self.ptr

    def test_function1_cython(self):
        self.ptr.test_function1()
    
    @staticmethod
    def gmp_print_test():
        cdef TestClass1 testclass1
        testclass1.gmp_print_test()

    @staticmethod
    def test_sum(int x, int y):
        cdef TestClass1 testclass1
        return testclass1.test_sum(x, y)

    @staticmethod
    def test_sum_double(float x, float y):
        cdef TestClass1 testclass1
        return testclass1.test_sum_double(x, y)

    @staticmethod
    def test_vector_int(list x, int y):
        cdef TestClass1 testclass1
        return testclass1.test_vector_int(x,y)

    def get_property_test_class2(self):
        cdef:
            TestClass2 cpp_test_class2
        
        test_class2 = TestClass2Cython()
        cpp_test_class2 = self.ptr.get_property_test_class2()
        test_class2.ptr[0] = cpp_test_class2
        return test_class2

