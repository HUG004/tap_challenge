import 'package:flutter/material.dart';
import 'screens/fortnite_home_screen.dart'; // Importar la pantalla principal

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fortnite App',
      theme: ThemeData(
        // Configuración del tema con un color primario azul
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true, // Habilita Material 3
      ),
      home: const FortniteHomeScreen(), // Pantalla principal de la app
    );
  }
}