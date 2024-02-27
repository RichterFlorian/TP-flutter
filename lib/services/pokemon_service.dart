import 'package:dio/dio.dart';
import 'package:pokemon/models/pokemon.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class PokemonService{
  Future<List<Pokemon>> getPokemons() async{
    List<Pokemon> pokemons = [];
    String? apiUrl = dotenv.env['API_URL'];
    final dio = Dio();
    final response = await dio.get(apiUrl!);
    
    for(dynamic element in response.data['data']){
      pokemons.add(Pokemon.fromJson(element));
    }
    return pokemons;
  }
}
