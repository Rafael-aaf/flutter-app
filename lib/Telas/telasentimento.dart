import 'package:flutter/material.dart';
import 'package:projeto_desenvolvimento_de_software/Button_inicial.dart';

class telasentimento extends StatefulWidget {
  const telasentimento({super.key});

  @override
  State<telasentimento> createState() => _telasentimentoState();
}

class _telasentimentoState extends State<telasentimento>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xFF90ee90),
      appBar: AppBar(
        title: Text("Sentimentos"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), //aplica um espaçamento em todos os lados do widget
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row( //primeira row, com 2 blocos
              children: [
                Expanded(
                  child: Container(
                    height: 150,
                    color: Color(0xFF00ff80),
                    child: Button_telas(
                      imagePath: "assets/sentimentos-feliz.png",
                      label: "Feliz",
                      soundPath: 'sentimento-feliz.mp3',
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: Container(
                    height: 150,
                    color: Color(0xFF00ff80),
                    child: Button_telas(
                      imagePath: "assets/sentimentos-triste.png",
                      label: "Triste",
                      soundPath: 'sentimento-triste.mp3',
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row( //segunda row com 2 blocos
              children: [
                Expanded(
                  child: Container(
                    height: 150,
                    color: Color(0xFF00ff80),
                    child: Button_telas(
                      imagePath: "assets/sentimentos-bravo.png",
                      label: "Bravo",
                      soundPath: 'sentimento-bravo.mp3',
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: Container(
                    height: 150,
                    color: Color(0xFF00ff80),
                    child: Button_telas(
                      imagePath: "assets/sentimentos-medo.png",
                      label: "Medo",
                      soundPath: 'sentimento-medo.mp3',
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}