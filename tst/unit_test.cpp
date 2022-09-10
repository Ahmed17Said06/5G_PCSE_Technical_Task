#include "gtest/gtest.h"
#include<vector>
#include "../src/Func_delegate_tst.cpp"



TEST(unit_test1, accu_calc_test) {

    std::vector<int> vec = {50,50,50,50,50};
    int accu_temp =0;

    EXPECT_EQ (250,  accu_calc_test(vec,accu_temp));
}

TEST(unit_test2, avg_calc_test) {

    EXPECT_EQ (50,  avg_calc_test(250));
}