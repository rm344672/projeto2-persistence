import 'package:flutter/material.dart';
import 'package:flutter_projeto2_persistence/floor/list.dart';
import 'package:flutter_projeto2_persistence/screens/home.dart';
import 'package:flutter_projeto2_persistence/sqlite/list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => const homeWidget(),
        "/sqlite": (context) => const ListSQLiteWidget(),
        "/floor": (context) => const ListFloorWidget()
      },
    );
  }
}
