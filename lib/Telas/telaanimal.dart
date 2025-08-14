import 'package:flutter/material.dart';
import 'package:projeto_desenvolvimento_de_software/Button_inicial.dart';

class telaanimal extends StatefulWidget {
  const telaanimal({super.key});

  @override
  State<telaanimal> createState() => _telaanimalState();
}

class _telaanimalState extends State<telaanimal>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xFF90ee90),
      appBar: AppBar(
        title: Text("Animais"),
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
                      imagePath: "assets/animal dog.jpg",
                      label: "Cachorro",
                      soundPath: 'animal-cachorro.mp3',
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: Container(
                    height: 150,
                    color: Color(0xFF00ff80),
                    child: Button_telas(
                      imagePath: "assets/animal-gato.jpg",
                      label: "Gato",
                      soundPath: 'animal-gato.mp3',
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
                      imagePath: "assets/animal-pato.jpg",
                      label: "Pato",
                      soundPath: "animal-pato.mp3",//ahhhhhhhhhhhh
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: Container(
                    height: 150,
                    color: Color(0xFF00ff80),
                    child: Button_telas(
                      imagePath: "assets/animal-rata.jpg",
                      label: "Rato",
                      soundPath: 'animal-rato.mp3',
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 150,
                    color: Color(0xFF00ff80),
                    child: Button_telas(
                      imagePath: "assets/animal-porco.jpg",
                      label: "Porco",
                      soundPath: 'animal-porco.mp3',
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: Container(
                    height: 150,
                    color: Color(0xFF00ff80),
                    child: Button_telas(
                      imagePath: "assets/animal-vaca.jpg",
                      label: "Vaca",
                      soundPath: 'animal-vaca.mp3',
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