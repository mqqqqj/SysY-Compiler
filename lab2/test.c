#include<stdio.h>

int global_no_use = 0;

int max(int a, int b) {
    if(a >= b) {
        return a;
    } else {
        return b;
    }   
}

int main() {
    int res = max(10,5);
    int i = 2;
    printf("%d\n", i = i + 1);
    res = res + 1;
    return 0;
}