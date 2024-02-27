import 'package:flutter/material.dart';
import 'package:pokemon/screens/pokemon_master_screen.dart';


class PokemonMasterScreenApp extends StatelessWidget {
  const PokemonMasterScreenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PokemonMasterScreen(),
    );
  }
}
