import 'dart:math';

void main() {
  somaComPrint(2, 3);
  somaComPrint(4, 5);
  somaDoisNumerosQuaisquer();
}

void somaComPrint(int a, int b) {
  print(a + b);
}

void somaDoisNumerosQuaisquer() {
  int n1 = Random().nextInt(11);
  int n2 = Random().nextInt(11);
  print('os valores sorteados foram: $n1 e $n2');
  print(n1 + n2);
}
