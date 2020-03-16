cdef extern from "../cpp_library/TestClass1.h" namespace "my_library":
    cdef cppclass TestClass1:
        TestClass1()
        void test_function1()
        void gmp_print_test()
        int test_sum(int x, int y)
        double test_sum_double(double x, double y)
        vector[int] test_vector_int(vector[int] x, int y)