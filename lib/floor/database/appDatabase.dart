import 'dart:async';

import 'package:floor/floor.dart';
import 'package:flutter_projeto2_persistence/floor/daos/BookDao.dart';
import 'package:flutter_projeto2_persistence/floor/models/Book.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

part 'appDatabase.g.dart';

@Database(version: 1, entities: [Book])
abstract class AppDatabase extends FloorDatabase{
  BookDao get bookDao;
}