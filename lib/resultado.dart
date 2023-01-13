import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() quandoReiniciarQuestionario;

  Resultado(this.pontuacao, this.quandoReiniciarQuestionario);

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'Parabéns por ter feito $pontuacao pontos.';
    } else if (pontuacao < 12) {
      return 'Você é bom, fez $pontuacao pontos.';
    } else if (pontuacao < 16) {
      return 'Impressionante, você fez $pontuacao pontos!';
    } else {
      return 'Nível Jedi, você fez $pontuacao pontos!!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 28),
          ),
        ),
        TextButton(
          onPressed: quandoReiniciarQuestionario,
          child: Text(
            'Reiniciar?',
            style: TextStyle(fontSize: 18),
          ),
          style: TextButton.styleFrom(
            primary: Colors.blue,
          ),
        )
      ],
    );
  }
}
