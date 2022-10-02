#include <stdio.h>

#define N 100

int a = 10;

// global const

const int c = 5;

int main() {
    int* ptr;
    int arr[N][c];

    for (int i = 0; i < N; i ++) 
        for(int j = 0; j < c; j ++)
            arr[i][j] = i + j;

    ptr = *(arr + 4);
    if(a > c)
        printf("%d\n", *ptr);
    else printf("%d\n", *(ptr + 10));
    
    return 0;
}