import 'package:flutter/material.dart';
import 'package:projeto_desenvolvimento_de_software/Button_inicial.dart';

class telaacoes extends StatefulWidget {
  const telaacoes({super.key});

  @override
  State<telaacoes> createState() => _telaacoesState();
}

class _telaacoesState extends State<telaacoes>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xFF90ee90),
      appBar: AppBar(
        title: Text("Ações"),
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
                      imagePath: "assets/acoes-brincar.png",
                      label: "Brincar",
                      soundPath: 'acoes-brincar.mp3',
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: Container(
                    height: 150,
                    color: Color(0xFF00ff80),
                    child: Button_telas(
                      imagePath: "assets/acoes-dormir.png",
                      label: "Dormir",
                      soundPath: 'acoes-dormir.mp3',
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
                      imagePath: "assets/acoes-banho.png",
                      label: "Banho",
                      soundPath: 'acoes-banho.mp3',
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: Container(
                    height: 150,
                    color: Color(0xFF00ff80),
                    child: Button_telas(
                      imagePath: "assets/acoes-banheiro.png",
                      label: "Ir ao banheiro",
                      soundPath: 'acoes-banheiro.mp3',
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
                      imagePath: "assets/acoes-comer.png",
                      label: "Comer",
                      soundPath: 'acoes-comer.mp3',
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: Container(
                    height: 150,
                    color: Color(0xFF00ff80),
                    child: Button_telas(
                      imagePath: "assets/acoes-tv.png",
                      label: "Assitir TV",
                      soundPath: 'acoes-tv.mp3',
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