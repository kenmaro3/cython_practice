#pragma once
#include <iostream>
#include "TestClass1.h"
using namespace std;

namespace my_library{

TestClass1::TestClass1(){
    this->property_test_class2 = TestClass2();
}

TestClass1::TestClass1(TestClass2 test_class2){
    this->property_test_class2 = test_class2;
}

void TestClass1::test_function1(){
    cout << "printed from cpp function" << endl;
}
void TestClass1::gmp_print_test(){
    mpz_t test;
    mpz_init(test);
    mpz_set_ui(test, 1);
    gmp_printf("print : %Zd \n", test);
}

int TestClass1::test_sum(int x, int y){
    return x+y;
}

double TestClass1::test_sum_double(double x, double y){
    return x+y;
}

vector<int> TestClass1::test_vector_int(vector<int> x, int y){
    vector<int> result;
    result.resize(x.size());
    for(int i=0; i<x.size(); i++){
        result[i] = x[i]*y;
    }

    return result;
}

TestClass2 TestClass1::get_property_test_class2(){
    return this->property_test_class2;
}

void TestClass1::set_property_test_class2(TestClass2 test_class2){
    this->property_test_class2 = test_class2;
}

}