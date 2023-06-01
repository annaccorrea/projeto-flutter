class Disciplina {
  late final String codigo;
  late final String nome;
  late final String professor;

  Disciplina({
    required this.codigo,
    required this.nome,
    required this.professor,
  });

  static List<Disciplina> gerarDisciplinas() {
    return [
      Disciplina(
        codigo: 'PDME',
        nome: 'Programação para Dispositivos Móveis',
        professor: 'Dourado',
      ),
      Disciplina(
        codigo: 'AGRD',
        nome: '1Programação para Dispositivos Móveis',
        professor: 'Dourado',
      ),
      Disciplina(
        codigo: 'CBGD',
        nome: '2Programação para Dispositivos Móveis',
        professor: 'Dourado',
      ),
      Disciplina(
        codigo: 'GPRD',
        nome: '3Programação para Dispositivos Móveis',
        professor: 'Dourado',
      ),
      Disciplina(
        codigo: 'PLD',
        nome: '4Programação para Dispositivos Móveis',
        professor: 'Dourado',
      ),
      Disciplina(
        codigo: 'TP',
        nome: '5Programação para Dispositivos Móveis',
        professor: 'Dourado',
      ),
    ];
  }
}
