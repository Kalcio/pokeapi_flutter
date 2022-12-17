import 'package:flutter/material.dart';
import 'package:pokeapi_flutter/screen/pokedex.dart';
import 'package:pokeapi_flutter/screen/votos.dart';
import 'package:pokeapi_flutter/screen/inicio.dart';
import 'package:pokeapi_flutter/screen/favoritos.dart';
import 'package:pokeapi_flutter/screen/widget/menu.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<Homescreen> {
  int _paginaActual = 0;

  final List<Widget> _paginas = [
    // const inicioScreen(),
    const Pokedexscreen(),
    const Votoscreen(),
    const Favoritoscreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: const Color.fromARGB(255, 190, 50, 7)),
      body: _paginas[_paginaActual],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 190, 50, 7),
        onTap: (index) {
          setState(() {
            _paginaActual = index;
          });
        },
        currentIndex: _paginaActual,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Pokedex",
              backgroundColor: Color.fromARGB(255, 230, 11, 11)),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.topic,
              ),
              label: "Votos",
              backgroundColor: Color.fromARGB(255, 230, 11, 11)),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.poll,
              ),
              label: "Favoritos",
              backgroundColor: Color.fromARGB(255, 230, 11, 11)),
          // BottomNavigationBarItem(
          //     icon: Icon(
          //       Icons.star_rate,
          //     ),
          //     label: "Favoritos",
          //     backgroundColor: Color.fromARGB(255, 230, 11, 11))
        ],
      ),
      drawer: const Menu(),
    );
  }
}
