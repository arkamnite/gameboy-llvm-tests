char fib(char start) {
    char n = 1;
    char o = start + n;
    char p = n + o;
    return p;
}

int main(int argc, char** argv) {
    return fib(argc);
}