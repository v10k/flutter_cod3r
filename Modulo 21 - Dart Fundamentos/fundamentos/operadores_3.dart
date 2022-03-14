void main() {
  int a = 3;
  int b = 4;

  // operadores Unários
  a++; //Posfix
  --a; //Prefix

  print(a);

  print(a++ == --b);
  print(a == b);

  // operador Lógico Unário (NOT)
  print(!true);
  print(!false);

  bool x = false;
  print(!x);
}
