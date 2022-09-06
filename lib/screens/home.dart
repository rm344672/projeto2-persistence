import 'package:flutter/material.dart';
import 'package:flutter_projeto2_persistence/utils/customWidgets.dart';

class homeWidget extends StatelessWidget {
  const homeWidget({Key? key}) : super(key: key);

  final title = const Text("Flutter Persistências");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: title
      ),
      body: ListView(
        children: [
          ListTile(
            leading: buildSvgIcon("images/sqlite-icon.svg"),
            title: const Text("SQLite"),
            subtitle: const Text("Lista de pessoas"),
            trailing: const Icon(Icons.navigate_next),
            onTap: (){
              Navigator.pushNamed(context, "/sqlite");
            },
          ),
          divisorListMain(),
           ListTile(
            leading: buildSvgIcon("images/db.svg"),
            title: const Text("Floot"),
            subtitle: const Text("Lisa de livros"),
            trailing: const Icon(Icons.navigate_next),
            onTap: (){
              Navigator.pushNamed(context, "/floor");
            },
          ),
          divisorListMain(),
        ]
      ),
    );
  }
}