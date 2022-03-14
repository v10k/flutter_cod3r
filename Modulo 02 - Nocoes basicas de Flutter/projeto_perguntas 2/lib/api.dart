import 'dart:convert';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import './perguntas.dart';

class Api {
  static Future<String> _carregaPerguntas() async {
    return await rootBundle.loadString('assets/json/perguntas.json');
  }

  static jsonComolista(String jsonString) {
    Map<String, dynamic> jsonResponse = json.decode(jsonString);
    return jsonResponse.values.map((value) => value).toList();
  }

  static Future<List<Perguntas>> carregaPerguntas() async {
    String jsonString = await _carregaPerguntas();
    List resultado = jsonComolista(jsonString);
    List<Perguntas> perguntas = [];

    for (var item in resultado) {
      perguntas.add(Perguntas.fromJson(item));
    }

    return perguntas;
  }
}
