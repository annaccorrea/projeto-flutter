import 'package:flutter/material.dart';
import 'package:projeto/aula08/aula08.dart';
import 'package:projeto/aula09/aula09.dart';
import 'package:projeto/aula09/view/aula09_dashboard.dart';
import 'package:projeto/aula09/view/aula09_disciplinas.dart';
import 'package:projeto/aula10/aula10.dart';
import 'package:projeto/aula10/view/aula10_future.dart';
import 'package:projeto/aula12/model/carrinho_model.dart';
import 'package:projeto/aula12/view/cardapio_view.dart';
import 'package:projeto/aula12/view/pedido_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CarrinhoModel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: '/cardapio_view',
      routes: {
        '/': (context) => const Aula08(),
        '/aula09': (context) => const Aula09(),
        '/aula09_dashboard': (context) => const Aula09Dashboard(),
        '/aula09_disciplinas': (context) => const Aula09Disciplinas(),
        '/aula10': (context) => const Aula10(),
        '/aula10_future': (context) => const Aula10Future(),
        '/cardapio_view': (context) => const CardapioView(),
        '/pedido_view': (context) => const PedidoView(),
      },
    );
  }
}
