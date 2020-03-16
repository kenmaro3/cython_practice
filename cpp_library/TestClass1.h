#include <gmp.h>
#include <vector>

using namespace std;

namespace my_library
{
class TestClass1{
    public:
        TestClass1();
        void test_function1();
        static void gmp_print_test();
        static int test_sum(int x, int y);
        static double test_sum_double(double x, double y);
        static vector<int> test_vector_int(vector<int> x, int y);
};    
} // namespace my_library