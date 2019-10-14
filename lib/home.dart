import 'package:flutter/material.dart';
import 'package:pokemon/util/util.dart';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
          title: Text("Pokemon"),
          backgroundColor: Colors.red,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            )
          ]),
      body: Center(
        child: Container(
          width: 180,
          height: 180,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 8),
            shape: BoxShape.circle,
          ),
          child: Container(
            width: 180,
            height: 85,
            decoration: BoxDecoration(
              color: HexColor("#ff0000"),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(100),topRight: Radius.circular(100))
            ),
          ),
        ),
      ),
    );
  }
}
