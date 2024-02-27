import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pokemon/models/pokemon.dart';
import 'package:pokemon/services/pokemon_service.dart';

class PokemonMasterScreen extends StatelessWidget {
  const PokemonMasterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PokemonService service = PokemonService();
    Future<List<Pokemon>> pokemons = service.getPokemons();

    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            FutureBuilder<List>(
              future: service.getPokemons(),
              builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
                List<Widget> retour;
                if (snapshot.hasData) {
                  retour = <Widget>[
                    ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index){ 
                        return Text(snapshot.data![index]);
                      },
                    ),
                  ];
                }
                else {
                  retour = const <Widget>[
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: CircularProgressIndicator(),
                    ),
                  ];
                }

                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: retour,
                  ),
                );
              }
            )
          ],
        ),
      ),
    );
  }
}
