import 'package:flutter/material.dart';
import 'package:projeto_desenvolvimento_de_software/Button_inicial.dart';

class telabebida extends StatefulWidget {
  const telabebida({super.key});

  @override
  State<telabebida> createState() => _telabebidaState();
}

class _telabebidaState extends State<telabebida>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xFF90ee90),
      appBar: AppBar(
        title: Text("Bebidas"),
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
                      imagePath: "assets/bebida-agua.png",
                      label: "Água",
                      soundPath: 'bebida-agua.mp3',
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: Container(
                    height: 150,
                    color: Color(0xFF00ff80),
                    child: Button_telas(
                      imagePath: "assets/bebida-suco.png",
                      label: "Suco",
                      soundPath: 'bebida-suco.mp3',
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
                      imagePath: "assets/bebida-leite.png",
                      label: "Leite",
                      soundPath: 'bebida-leite.mp3',
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: Container(
                    height: 150,
                    color: Color(0xFF00ff80),
                    child: Button_telas(
                      imagePath: "assets/bebida-refrigerante.png",
                      label: "Refrigerante",
                      soundPath: 'bebida-refrigerante.mp3',
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