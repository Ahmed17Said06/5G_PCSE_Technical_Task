#include<vector>

int accu_calc_test(std::vector<int> &v, int &x){        
    for (int i=0; i<v.size(); i++){
        x += v[i];
    }
    return x;
}

int avg_calc_test(int y){
    return (y / 5.0);
}