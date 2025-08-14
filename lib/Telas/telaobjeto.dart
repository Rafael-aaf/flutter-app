import 'package:flutter/material.dart';
import 'package:projeto_desenvolvimento_de_software/Button_inicial.dart';

class telaobjeto extends StatefulWidget {
  const telaobjeto({super.key});

  @override
  State<telaobjeto> createState() => _telaobjetoState();
}

class _telaobjetoState extends State<telaobjeto>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xFF90ee90),
      appBar: AppBar(
        title: Text("Objetos"),
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
                      imagePath: "assets/objetos-brinquedo.png",
                      label: "Brinquedo",
                      soundPath: 'objetos-brinquedo.mp3',
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: Container(
                    height: 150,
                    color: Color(0xFF00ff80),
                    child: Button_telas(
                      imagePath: "assets/objetos-livro.png",
                      label: "Livro",
                      soundPath: 'objetos-livro.mp3',
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
                      imagePath: "assets/objetos-lapis.png",
                      label: "Lápis",
                      soundPath: 'objetos-lapis.mp3',
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: Container(
                    height: 150,
                    color: Color(0xFF00ff80),
                    child: Button_telas(
                      imagePath: "assets/objetos-chupeta.png",
                      label: "Chupeta",
                      soundPath: 'objetos-chupeta.mp3',
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
                      imagePath: "assets/objetos-pelucia.png",
                      label: "Ursinho de Pelúcia",
                      soundPath: 'objetos-pelucia.mp3',
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: Container(
                    height: 150,
                    color: Color(0xFF00ff80),
                    child: Button_telas(
                      imagePath: "assets/objetos-celular.png",
                      label: "Celular",
                      soundPath: 'objetos-celular.mp3',
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