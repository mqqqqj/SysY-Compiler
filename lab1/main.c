#include <stdio.h>

#ifndef a
#define a (x + 1)
#else 
int is_exist = 101;
#endif

const int N = 100;

int x = 2;

void func_a(int n){//函数a：输出局部变量x + 1 + n的结果

    int x = 1;

    printf("%d\n", a + n);
}

void func_b(){//函数b：输出全局变量x + 1 + N 的结果

    printf("%d\n", a + N);

}

int func_c(int n) {
    int c, b, i, t;
    c = 0;
    b = 0;
    i = 1;
    printf("%d%d", c, b);
    while (i < n) {
        t = c;
        c = c + b;
        printf("%d", c);
        b = t;
        i = i + 1;
    }
    return c;
}


int main(){

    func_a(10);

    func_b();

    printf("%d",func_c(20));

    return 0;
}

