import '../model/venda.dart';
import '../model/produto.dart';
import '../model/cliente.dart';
import '../model/venda-item.dart';

void main() {
  Produto p1 = new Produto(
      codigo: 210, nome: 'Notebook Acer Aspire 5', preco: 3000, desconto: 0.05);
  Produto p2 = new Produto(codigo: 725, nome: 'Ventilador', preco: 300);
  Produto p3 = new Produto(
      codigo: 044,
      nome: 'Kindle Paperwhite 11 geração',
      preco: 1000,
      desconto: 0.2);

  Cliente c1 = new Cliente(nome: 'Alírio da Silva', cpf: '392.192.899-10');

  List<VendaItem> vendaItens = [];
  vendaItens.add(new VendaItem(produto: p1, quantidade: 1));
  vendaItens.add(new VendaItem(produto: p2, quantidade: 3));
  vendaItens.add(new VendaItem(produto: p3, quantidade: 2));

  Venda v1 = new Venda(cliente: c1, itens: vendaItens);

  print("Cliente: ${v1.cliente!.nome} | CPF: ${v1.cliente!.cpf}");
  for (VendaItem item in v1.itens) {
    print(
        "Código do Produto: ${item.produto!.codigo} | Nome: ${item.produto!.nome} | Preço unitário: ${item.preco} | Quantidade: ${item.quantidade} | Desconto Aplicado: ${item.produto!.desconto * 100}%");
  }
  print("preço total: ${v1.valorTotal}");

  var venda = Venda(
      cliente: Cliente(cpf: '291.291.285-68', nome: 'Francisco Cardoso'),
      itens: <VendaItem>[
        VendaItem(
            quantidade: 30,
            produto: Produto(
                codigo: 1, nome: 'Lápis Preto', preco: 6.00, desconto: 0.5)),
        VendaItem(
            quantidade: 20,
            produto: Produto(
                codigo: 123, nome: 'Caderno', preco: 20.00, desconto: 0.25)),
        VendaItem(
            quantidade: 100,
            produto: Produto(
                codigo: 52, nome: 'Borracha', preco: 2.00, desconto: 0.5))
      ]);

  print("O valor total da venda é: R\$${venda.valorTotal}");

  print("Nome do primeiro produto é ${venda.itens[0].produto!.nome}");
  print("O CPF do cliente é: ${venda.cliente!.cpf}");
}

// instanciar uma venda, com 3 itens, com produtos nome e desconto