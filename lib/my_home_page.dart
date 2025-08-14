import 'package:flutter/material.dart';
import 'main.dart';
import 'Button_inicial.dart';
import 'Telas/telaacoes.dart';
import 'Telas/telaanimal.dart';
import 'Telas/telabebida.dart';
import 'Telas/telacomida.dart';
import 'Telas/telacreditos.dart';
import 'Telas/telanumero.dart';
import 'Telas/telaobjeto.dart';
import 'Telas/telapessoa.dart';
import 'Telas/telasentimento.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xFF90ee90), //Define a cor de fundo
      appBar: AppBar(
        title: Text(widget.title),
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
                    height: 90,
                    color: Color(0xFF00ff80),
                    child: Button(
                      imagePath: "assets/comida-pizza.png",
                      label: "Comidas",
                      destination: const telacomida(),
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: Container(
                    height: 90,
                    color: Color(0xFF00ff80),
                    child: Button(
                      imagePath: "assets/bebida-suco.png",
                      label: "Bebidas",
                      destination: const telabebida(),
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
                    height: 90,
                    color: Color(0xFF00ff80),
                    child: Button(
                      imagePath: "assets/objetos-brinquedo.png",
                      label: "Objetos",
                      destination: const telaobjeto(),
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: Container(
                    height: 90,
                    color: Color(0xFF00ff80),
                    child: Button(
                      imagePath: "assets/animal-pato.jpg",
                      label: "Animais",
                      destination: const telaanimal(),
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
                    height: 90,
                    color: Color(0xFF00ff80),
                    child: Button(
                      imagePath: "assets/pessoa-mae.jpeg",
                      label: "Pessoas",
                      destination: const telapessoa(),
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: Container(
                    height: 90,
                    color: Color(0xFF00ff80),
                    child: Button(
                      imagePath: "assets/sentimentos-feliz.png",
                      label: "Sentimentos",
                      destination: const telasentimento(),
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
                    height: 90,
                    color: Color(0xFF00ff80),
                    child: Button(
                      imagePath: "assets/acoes-dormir.png",
                      label: "Ações",
                      destination: const telaacoes(),
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: Container(
                    height: 90,
                    color: Color(0xFF00ff80),
                    child: Button(
                      imagePath: "assets/numero-1.jpg",
                      label: "Números",
                      destination: const telanumero(),
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
                    height: 90,
                    color: Color(0xFF00ff80),
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF00ff80),
                        foregroundColor: Colors.white,
                      ),
                      child: Text("Créditos"),
                      onPressed:(){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=> telacreditos()),
                        );
                      },
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