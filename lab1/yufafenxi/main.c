const int n = 20;

int global_no_use;

void no_use_func() {
    int a = 1;
}

int func_a() {
    char local_no_use = 'a';
    for(int i = 0; i < 10; i ++) continue;
    int x = 14;
    int y = 7 - x / 2;
    return y * (28 / x + 2);  //常量传播
}

int main() {
    int a, b, i, t, n;
    a = 0;
    b = 1;
    i = 1;
    while(i < n) {
        t = b;
        b = a + b;
        a = t;
        i = i + 1;
    }
    func_a();
    return 0;
}