import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


//Butão da tela inicial
class Button extends StatelessWidget {
  final String imagePath;
  final String label;
  final Widget destination;

  const Button({
    required this.imagePath,
    required this.label,
    required this.destination,
    super.key,
  });
//build da classe Button
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: const Color(0xFF00ff80),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF00ff80),
          foregroundColor: Colors.white,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => destination),
          );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imagePath, height: 65),
            const SizedBox(height: 4),
            Text(label),
          ],
        ),
      ),
    );
  }
}


//Botão para as outras telas
class Button_telas extends StatelessWidget {
  final String imagePath;
  final String label;
  final String soundPath;

  static final AudioPlayer player = AudioPlayer();

  const Button_telas({
    required this.imagePath,
    required this.label,
    required this.soundPath,
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF00ff80),
        foregroundColor: Colors.white,
        padding: EdgeInsets.zero,
        minimumSize: const Size(double.infinity, 100),
      ),
      onPressed: () async {
        if (soundPath.isNotEmpty) {
          await player.stop();
          await player.play(AssetSource(soundPath));
        }
      },
      child: Container(
        width: double.infinity,
        height: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imagePath, height: 75),
            const SizedBox(height: 4),
            Text(label),
          ],
        ),
      ),
    );
  }
}


//Botão para a tela de Números
class BotaoNumero extends StatelessWidget {
  final String imagePath;
  final String label;
  final String soundPath;

  static final AudioPlayer player = AudioPlayer();

  const BotaoNumero(this.imagePath, this.label, this.soundPath, {super.key});

  @override
  Widget build(BuildContext context) {

    return ElevatedButton(
      onPressed: () async {
        if (soundPath.isNotEmpty) {
          await player.stop();
          await player.play(AssetSource(soundPath));
        }
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF00ff80),
        padding: EdgeInsets.zero,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (imagePath.isNotEmpty)
            Image.asset(imagePath, height: 60),
          const SizedBox(height: 4),
          Text(label, style: const TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
