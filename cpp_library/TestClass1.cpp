#include <iostream>
#include "TestClass1.h"
using namespace std;

namespace my_library{

TestClass1::TestClass1(){};
void TestClass1::test_function1(){
    cout << "printed from cpp function" << endl;
}


}