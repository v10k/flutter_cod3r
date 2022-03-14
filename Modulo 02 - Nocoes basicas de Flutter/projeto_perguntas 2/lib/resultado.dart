import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() quandoReiniciarQuestionario;

  String get fraseResultado {
    if (pontuacao < 16) {
      return 'Parabéns';
    } else if (pontuacao < 20) {
      return 'Você é bom!';
    } else if (pontuacao < 24) {
      return 'Impressionante!';
    } else {
      return 'Nível Jedi';
    }
  }

  const Resultado(this.pontuacao, this.quandoReiniciarQuestionario, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: ,
      children: [
        Center(
          child: Text(fraseResultado, style: const TextStyle(fontSize: 28)),
        ),
        TextButton(
          onPressed: quandoReiniciarQuestionario,
          child: const Text('Reiniciar?', style: TextStyle(fontSize: 18)),
          style: TextButton.styleFrom(
            primary: Colors.blue,
            backgroundColor: Colors.white,
          ),
        )
      ],
    );
  }
}
