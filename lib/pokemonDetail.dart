import 'package:flutter/material.dart';

import 'package:pokemon/entity/pokemon.dart';

class PokemonDetailPage extends StatelessWidget {
  Widget build(BuildContext context) {

    final Pokemon pokemon = ModalRoute.of(context).settings.arguments;

    return new Scaffold(
      appBar: AppBar(
        title: Text(pokemon.name),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: PokemonDetail()
      ),
    );
  }
}

class PokemonDetail extends StatefulWidget {
  @override
  _PokemonDetailState createState() {
    return new _PokemonDetailState();
  }
}

class _PokemonDetailState extends State<PokemonDetail> {
  Widget buildContainer() {
    return new Container(

    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }
}
