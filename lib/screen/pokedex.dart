import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';



class Pokedexscreen extends StatelessWidget {
  const Pokedexscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
    child: Text(
      "POKEDEX",
      style: TextStyle(fontSize: 30)
    ),
    );
}
}