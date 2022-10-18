int add(int x, int y);

long subtract(long x, long y);

int main() {
	int x = 1;
	int y = 0;
	x = add(2, y);
	return 0;
}

int add(int x, int y) {
	return x + y;
}

long subtract(long x, long y) {
	return x - y;
}