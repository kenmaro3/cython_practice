from libcpp.vector cimport vector	
from libcpp.string cimport string

cdef extern from "../cpp_library/TestClass1.h" namespace "my_library":
    cdef cppclass TestClass1:
        TestClass1()
        TestClass1(TestClass2 test_class2)
        void test_function1()
        void gmp_print_test()
        int test_sum(int x, int y)
        double test_sum_double(double x, double y)
        vector[int] test_vector_int(vector[int] x, int y)

        void set_property_test_class2(TestClass2 test_class2)
        TestClass2 get_property_test_class2()

cdef extern from "../cpp_library/TestClass2.h" namespace "my_library":
    cdef cppclass TestClass2:
        TestClass2()
