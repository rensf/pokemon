import 'package:flutter/material.dart';

import 'util/util.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
          child: PokemonList(),
        ),
      ),
    );
  }
}

class PokemonList extends StatefulWidget {
  @override
  _PokemonListState createState() {
    return new _PokemonListState();
  }
}

class _PokemonListState extends State<PokemonList> {
  Widget buildListTile(BuildContext context, Map item) {
    return new ListTile(
      dense: false,
      leading: new CircleAvatar(
        child: Image.network(
          item["img_path"],
          width: 40,
          height: 40,
        ),
        backgroundColor: Colors.white,
      ),
      //左侧首字母图标显示，不显示则传null
      title: new Text(item["name"]),
      //子item的标题
      subtitle: new Text(item["property"]),
      //子item的内容
      trailing: new Icon(
        Icons.keyboard_arrow_right,
        color: Colors.green,
      ), //显示右侧的箭头，不显示则传null
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Map> items = <Map>[
      {
        "name": "妙蛙种子",
        "img_path":
            "http://media.52poke.com/wiki/thumb/2/21/001Bulbasaur.png/300px-001Bulbasaur.png",
        "property": "种子宝可梦"
      },
      {
        "name": "妙蛙草",
        "img_path":
            "http://media.52poke.com/wiki/thumb/7/73/002Ivysaur.png/300px-002Ivysaur.png",
        "property": "种子宝可梦"
      },
      {
        "name": "妙蛙花",
        "img_path":
            "http://media.52poke.com/wiki/thumb/a/ae/003Venusaur.png/300px-003Venusaur.png",
        "property": "种子宝可梦"
      }
    ];
    Iterable<Widget> listTitles = items.map((Map item) {
      //将items的内容设置给Adapter
      return buildListTile(context, item);
    });
    return new ListView(children: listTitles.toList());
  }
}
