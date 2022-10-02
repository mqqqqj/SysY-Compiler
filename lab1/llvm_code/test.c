#include <stdio.h>

int func_a(int a, int b) {
    return a + b;
}

int main()
{
   int a = 10;
   int b = 11;
   printf("%d", func_a(a, b));
   return 0;
}
