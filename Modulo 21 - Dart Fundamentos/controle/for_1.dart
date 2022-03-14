void main() {
  for (int i = 1; i <= 10; i += 2) {
    print('i = $i');
  }

  for (int i = 100; i >= 0; i -= 4) {
    print('i = $i');
  }

  int k = 0;
  for (; k <= 10; k++) {
    print('k = $k');
  }
  print('[FORA] k = $k');
  print('Fim!');
}
