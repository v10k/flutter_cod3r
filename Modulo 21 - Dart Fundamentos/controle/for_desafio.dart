void main() {
  List exibe2 = ['#', '##', '###', '####', '#####', '######'];
  for (String lista in exibe2) {
    print(lista);
  }

  for (var valor = '#'; valor != '#######'; valor += '#') {
    print(valor);
  }
}
