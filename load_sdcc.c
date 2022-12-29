int hello_global = 0;

int addition(int x) __attribute__((ms_abi));

int addition_test(int x) __attribute__((sdcc_v0));

int addition_two(int x) __attribute__((sdcc_v1));

int main() {
    char y = 56;
    char x = addition_two(y);
    return addition_test(40);
}

int addition_test(int x) {
    return x + x;
}

int addition_two(int x) {
    if (x > 0) {
        return x + x * x;
    } else {
        return x - x;
    }
}