import 'package:flutter/material.dart';
import 'package:projeto/aula09/classes/disciplina.dart';

class DisciplinaCard extends StatelessWidget {
  const DisciplinaCard({super.key, required this.disciplina});

  final Disciplina disciplina;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        margin: const EdgeInsets.all(16),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.15,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(disciplina.codigo),
              Text(disciplina.nome),
              Text(disciplina.professor),
            ],
          ),
        ),
      ),
    );
  }
}
