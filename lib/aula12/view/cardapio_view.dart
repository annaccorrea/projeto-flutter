import 'package:badges/badges.dart';
import 'package:projeto/aula12/model/carrinho_model.dart';
import 'package:projeto/aula12/model/produto.dart';
import 'package:flutter/material.dart';
import 'package:projeto/aula12/view/pedido_view.dart';
import 'package:provider/provider.dart';

class CardapioView extends StatelessWidget {
  const CardapioView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Produto> produtos = Produto.gerarLista();
    var carrinho = context.watch<CarrinhoModel>();
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: InkWell(
              onTap: () {
                if (carrinho.numProdutos > 0) {
                  Navigator.pushNamed(
                    context,
                    '/pedido_view',
                  );
                }
              },
              child: Badge(
                badgeContent: Text('${carrinho.numProdutos}'),
                showBadge: carrinho.numProdutos > 0,
                child: const Icon(Icons.shopping_cart),
              ),
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: produtos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(produtos[index].nome),
            subtitle: Text('R\$ ${produtos[index].preco.toStringAsFixed(2)}'),
            trailing: Padding(
              padding: const EdgeInsets.all(8),
              child: carrinho.adicionado(produtos[index])
                  ? IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.check),
                    )
                  : IconButton(
                      onPressed: () {
                        carrinho.adicionar(produtos[index]);
                      },
                      icon: const Icon(
                        Icons.add,
                        color: Colors.green,
                      ),
                    ),
            ),
          );
        },
      ),
    );
  }
}
