import 'package:challenge/models/character_model.dart';
import 'package:flutter/material.dart';
import '../widgets/fortnite_character_card.dart';
import 'fortnite_character_detail.dart';

class FortniteHomeScreen extends StatefulWidget {
  const FortniteHomeScreen({super.key});

  @override
  State<FortniteHomeScreen> createState() => _FortniteHomeScreenState();
}

class _FortniteHomeScreenState extends State<FortniteHomeScreen> {
  final List<Character> characters = [
    Character(
        image: "assets/fortnite/skin1.png",
        name: "skull trooper",
        description:
        "Un personaje icónico en Fortnite de la primera tienda de halloween en en año 2017. Con el paso de los años se le agregaron 2 estilos diferentes."),
    Character(
        image: "assets/fortnite/skin2.png",
        name: "Raven",
        description:
        " Un guerrero oscuro con un aspecto intimidante. Su primera aparicion fue en la temporada 3 en la tienda"),
    Character(
        image: "assets/fortnite/skin3.png",
        name: "Travis Scott",
        description:
        "Skin exclusiva, su primera aparicion fue en el evento en vivo de su concienrto, después aparecio solo unas cuantas veces más."),
    Character(
        image: "assets/fortnite/skin4.png",
        name: "Galaxy",
        description:
        "Skin exclusiva por la colaboración de Samsung Galaxy con Fortnite."),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 10, 60, 120),
              Color.fromARGB(255, 20, 20, 60),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Fortnite: Personajes",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: 28,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(20),
                itemCount: characters.length,
                itemBuilder: (context, index) {
                  final character = characters[index];
                  return FortniteCharacterCard(
                    image: character.image,
                    name: character.name,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FortniteCharacterDetail(
                            character: character,
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("¡Próximamente podrás agregar más personajes!"),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}