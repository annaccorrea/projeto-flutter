import 'package:flutter/material.dart';
import 'package:projeto/aula09/classes/disciplina.dart';
import 'package:projeto/aula09/widgets/disciplina_card.dart';
import 'package:projeto/aula10/widgets/carregando_widget.dart';

class Aula10Future extends StatefulWidget {
  const Aula10Future({super.key});

  @override
  State<Aula10Future> createState() => _Aula10FutureState();
}

class _Aula10FutureState extends State<Aula10Future> {
  Future<String> carregarBoasVindas() async {
    await Future.delayed(const Duration(seconds: 5));
    return 'Bem vindo(a) ao Future!';
  }

  Future<List<Disciplina>> carregarDisciplinas() async {
    // var x = await fetch('\endpoint');
    // converter x em List<Disciplinas>;
    await Future.delayed(const Duration(seconds: 7));
    return Disciplina.gerarDisciplinas();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aula 10 Future'),
      ),
      body: Center(
        child: FutureBuilder(
          future: carregarDisciplinas(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                return Text('Erro: ${snapshot.error}');
              }
              var disciplinas = snapshot.data as List<Disciplina>;
              return ListView.builder(
                itemCount: disciplinas.length,
                itemBuilder: (context, index) =>
                    DisciplinaCard(disciplina: disciplinas[index]),
              );
            } else {
              return const CarregandoWidget();
            }
          },
        ),
      ),
    );
  }
}
