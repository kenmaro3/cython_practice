cdef extern from "../cpp_library/TestClass1.h" namespace "my_library":
    cdef cppclass TestClass1:
        TestClass1()
        void test_function1()