void main() {
  int result = calculator(5, 8, add);
  print(result);
}

final Function calculator = (int n1, int n2, Function calculation) {
  return calculation(n1, n2);
};

int add(int n1, int n2) {
  return n1 + n2;
}

int multiple(int n1, int n2) {
  return n1 * n2;
}
