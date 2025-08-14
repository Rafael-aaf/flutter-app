import 'package:flutter/material.dart';
import 'package:projeto_desenvolvimento_de_software/Button_inicial.dart';

class telanumero extends StatefulWidget {
  const telanumero({super.key});

  @override
  State<telanumero> createState() => _telanumeroState();
}

class _telanumeroState extends State<telanumero> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF90ee90),
      appBar: AppBar(
        title: const Text("Números"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 2.0,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: const [
            BotaoNumero('assets/numero-0.jpg', 'Zero', 'numero-zero.mp3'),
            BotaoNumero('assets/numero-1.jpg', 'Um', 'numero-um.mp3'),
            BotaoNumero('assets/numero-2.jpg', 'Dois', 'numero-dois.mp3'),
            BotaoNumero('assets/numero-3.jpg', 'Três', 'numero-tres.mp3'),
            BotaoNumero('assets/numero-4.jpg', 'Quatro', 'numero-quatro.mp3'),
            BotaoNumero('assets/numero-5.jpg', 'Cinco', 'numero-cinco.mp3'),
            BotaoNumero('assets/numero-6.jpg', 'Seis', 'numero-seis.mp3'),
            BotaoNumero('assets/numero-7.jpg', 'Sete', 'numero-sete.mp3'),
            BotaoNumero('assets/numero-8.jpg', 'Oito', 'numero-oito.mp3'),
            BotaoNumero('assets/numero-9.jpg', 'Nove', 'numero-nove.mp3'),
          ],
        ),
      ),
    );
  }
}