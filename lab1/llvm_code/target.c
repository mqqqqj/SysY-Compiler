//全局常量的定义及初始化
#include <stdio.h>

const int N = 20;

void func_a() { // 二元运算符测试
    int a = 10, b = 2;
    int sdiv_res = a / b;
    double c = 10.2, d = 9.8;
    double add_res = c + d;
    printf("%d\n", sdiv_res);
    printf("%f\n", add_res);
}

void func_b(int* arr) {
    int tmp1 = 0, tmp2 = 1;
    int* ptr = arr;
    for (int i = 0; ; i ++) {
        tmp2 = tmp2 + tmp1;
        tmp1 = tmp2 - tmp1;
        *ptr = tmp2;
        ptr = ptr + 1;
        if(ptr - arr >= N) break;
    }
}

int main() {
    func_a();
    int arr[N];
    func_b(arr);
    for(int i = 0; i < N; i ++) printf("%d\n", arr[i]);
    return 0;
}
