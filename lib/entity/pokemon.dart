import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Pokemon {
  final int id;
  final String name;
  final String img_path;
  final String property;

  Pokemon({this.id, this.name, this.img_path, this.property});
}
