extern char a, b, c;
extern int d, e, f;
char zz = 8;

int func3(char y) {
    e = -1;
    return e;
}

// char a = 7;
char func(char x) {
    return x + a * b;
}

char func2() {
    // a = 10;
    // b = func(3);
    // return func(c);
    return a;
}

int main() {
    f = 3;
    zz = f++;
    int *xx = &f;
    xx++;
    return func3(0);
}


// char func(double x) {
//     return a;
// }