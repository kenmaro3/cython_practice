#include "TestClass1.h"
#include <iostream>

using namespace std;

using namespace my_library;

int main(){
    int sum1 = TestClass1::test_sum(1,2);
    double sum2 = TestClass1::test_sum_double(1.0, 2.0);

    cout << sum1 << endl;
    cout << sum2 << endl;
}