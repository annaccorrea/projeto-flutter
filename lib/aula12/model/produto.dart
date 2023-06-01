class Produto {
  late int id;
  late String nome;
  late double preco;

  Produto({
    required this.id,
    required this.nome,
    required this.preco,
  });

  static List<Produto> gerarLista() {
    return [
      Produto(id: 1, nome: 'Produto 1', preco: 10.30),
      Produto(id: 2, nome: 'Produto 2', preco: 12.50),
      Produto(id: 3, nome: 'Produto 3', preco: 15.50),
      Produto(id: 4, nome: 'Produto 4', preco: 9.90),
      Produto(id: 5, nome: 'Produto 5', preco: 3.40),
      Produto(id: 6, nome: 'Produto 6', preco: 1.60),
      Produto(id: 7, nome: 'Produto 7', preco: 25.40),
      Produto(id: 8, nome: 'Produto 8', preco: 11.90),
      Produto(id: 9, nome: 'Produto 9', preco: 20),
      Produto(id: 10, nome: 'Produto 10', preco: 5.75),
    ];
  }
}
