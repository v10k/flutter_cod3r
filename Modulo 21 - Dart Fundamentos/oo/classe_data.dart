class Data {
  int? dia;
  int? mes;
  int? ano;

  // Data(int dia, int mes, int ano) {
  //   this.dia = dia;
  //   this.mes = mes;
  //   this.ano = ano;
  // }

  Data([this.dia = 1, this.mes = 1, this.ano = 1970]);

  // Construtores Nomeados
  Data.com({this.dia = 1, this.mes = 1, this.ano = 1970});
  Data.ultimoDiaDoAno(this.ano) {
    this.dia = 31;
    this.mes = 12;
  }

  String obterFormatada() {
    return "${dia.toString().padLeft(2, '0')}/${mes.toString().padLeft(2, '0')}/$ano";
  }

  String toString() {
    return this.obterFormatada();
  }
}

void main() {
  var dataAniversario = new Data(3, 10, 2020);

  Data dataCompra = Data(1, 1, 1970);
  // dataCompra.dia = 23;
  dataCompra.mes = 8;
  dataCompra.ano = 2021;

  String d1 = dataAniversario.obterFormatada();

  print("A data do aniversário é $d1");
  print("A data da compra é ${dataCompra.obterFormatada()}");

  print(dataCompra);
  print(dataCompra.toString());

  Data d2 = dataCompra;
  String s1 = dataCompra.toString();

  print(new Data(31));
  print(new Data(31, 12));
  print(new Data(31, 12, 2020));

  print(Data.com(ano: 2022));

  var dataFinal = Data.com(dia: 12, mes: 7, ano: 2024);
  print("O Mickey será público em $dataFinal");

  print(Data.ultimoDiaDoAno(2023));
}
