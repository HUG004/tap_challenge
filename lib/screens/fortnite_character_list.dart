import 'package:flutter/material.dart';
import '../widgets/fortnite_character_card.dart';

class FortniteCharacterList extends StatelessWidget {
  final List<Map<String, String>> characters = [
    {"name": "Personaje 1", "image": "assets/fortnite/skin1.png"},
    {"name": "Personaje 2", "image": "assets/fortnite/skin2.png"},
    {"name": "Personaje 3", "image": "assets/fortnite/skin3.png"},
    {"name": "Personaje 4", "image": "assets/fortnite/skin4.png"},
  ];

  FortniteCharacterList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Personajes de Fortnite"),
      ),
      body: ListView.builder(
        itemCount: characters.length,
        itemBuilder: (context, index) {
          final character = characters[index];
          return FortniteCharacterCard(
            image: character["image"]!,
            name: character["name"]!,
            onTap: () {
              print("Seleccionado: ${character["name"]}");
            },
          );
        },
      ),
    );
  }
}