import 'dart:convert';

class Perguntas {
  final int? id;
  final String? pergunta;
  final List<dynamic>? respostas;

  Perguntas({this.id, this.pergunta, this.respostas});

  factory Perguntas.fromJson(Map<String, dynamic> json) => Perguntas(
      id: json['id'], pergunta: json['pergunta'], respostas: json['respostas']);
}
