import '../model/Carro.dart';

void main() {
  Carro c1 = new Carro(velocidadeMaxima: 306);

  while (!c1.estaNoLimite()) {
    print(c1);
    c1.acelerar();
  }

  print('Velocidade total atingida ! ${c1.velocidadeAtual} KM/H');

  while (!c1.estaParado()) {
    print(c1);
    c1.frear();
  }

  // c1.velocidadeAtual = 5;

  print('Velocidade mínima atingida ! ${c1.velocidadeAtual} KM/H');
}
