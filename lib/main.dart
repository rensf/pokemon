import 'package:flutter/material.dart';

import 'home.dart';
import 'pokemonList.dart';
import 'pokemonDetail.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/" : (BuildContext context) => HomePage(),
        "/pl": (BuildContext context) => PokemonListPage(),
        "/pd": (BuildContext context) => PokemonDetailPage()
      },
    );
  }
}
