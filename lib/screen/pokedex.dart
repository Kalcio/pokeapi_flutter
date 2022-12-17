import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pokeapi_flutter/pokemon_list.dart';

class Pokedexscreen extends StatelessWidget {
  const Pokedexscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PokemonList(),
      ],
    );
  }
}
