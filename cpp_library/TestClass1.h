#pragma once
#include <gmp.h>
#include <vector>
#include "TestClass2.h"

using namespace std;

namespace my_library
{
class TestClass1{
    private:
        TestClass2 property_test_class2;
    public:
        TestClass1();
        TestClass1(TestClass2 test_class2);
        void test_function1();
        static void gmp_print_test();
        static int test_sum(int x, int y);
        static double test_sum_double(double x, double y);
        static vector<int> test_vector_int(vector<int> x, int y);

        void set_property_test_class2(TestClass2 test_class2);

        TestClass2 get_property_test_class2();
};    
} // namespace my_library