import 'package:flutter/material.dart';
import 'my_home_page.dart';

/*
hex colors:
ciano: 00ff80 (botões)
verde claro: 90ee90 (background)
verde escuro: 3d7d30 (parte de cima)
*/

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Comunique Fácil',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF3d7d30)), //muda a cor da barra inicial
        appBarTheme: AppBarTheme(
            backgroundColor: Color(0xFF3d7d30)
        ),
      ),
      home: const MyHomePage(title: 'Fala Fácil'),
    );
  }
}
