class Carro {
  final int velocidadeMaxima;
  int _velocidadeAtual = 0;

  Carro({this.velocidadeMaxima = 200});

  int get velocidadeAtual {
    return this._velocidadeAtual;
  }

  void set velocidadeAtual(int novaVelocidade) {
    bool deltaValido = ((_velocidadeAtual - novaVelocidade).abs() <= 5);
    print("${novaVelocidade.abs()} | Velocidade atual: $_velocidadeAtual");
    if (deltaValido && novaVelocidade >= 0) {
      this._velocidadeAtual = novaVelocidade;
    }
    this._limitador();
  }

  int acelerar() {
    this._velocidadeAtual += 5;
    this._limitador();
    return this._velocidadeAtual;
  }

  int frear() {
    this._velocidadeAtual -= 5;
    this._limitador();
    return this._velocidadeAtual;
  }

  void _limitador() {
    if (this._velocidadeAtual > this.velocidadeMaxima) {
      this._velocidadeAtual = this.velocidadeMaxima;
    }
    if (this._velocidadeAtual < 0) {
      this._velocidadeAtual = 0;
    }
  }

  bool estaNoLimite() => (this.velocidadeMaxima == this._velocidadeAtual);

  bool estaParado() => (this._velocidadeAtual == 0);

  String toString() {
    return 'Velocidade Atual: ${this._velocidadeAtual} KM/H | Velocidade Máxima: ${this.velocidadeMaxima} KM/H';
  }
}
