import './produto.dart';

class VendaItem {
  Produto? produto;
  int quantidade;
  double _preco = 0;

  VendaItem({this.produto, this.quantidade = 1});

  double get preco {
    if (produto != null) {
      _preco = produto!.precoComDesconto;
    }
    return _preco;
  }

  void set preco(double novoPreco) {
    _preco = (novoPreco > 0) ? novoPreco : _preco;
  }
}
