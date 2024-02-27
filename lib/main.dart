import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:pokemon/screens/pokemon_master_screen.dart';

Future<void> main() async{
  await dotenv.load(fileName: ".env");
  runApp(const PokemonMasterScreen());
}