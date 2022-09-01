import 'package:flutter/material.dart';
import 'package:flutter_projeto2_persistence/sqlite/add.dart';
import 'package:flutter_projeto2_persistence/sqlite/models/person.dart';
import 'package:flutter_projeto2_persistence/utils/customWidgets.dart';

class listSqliteWidget extends StatelessWidget {
  listSqliteWidget({Key? key}) : super(key: key);

  final title = const Text("SQLite - Lista Pessoas");
  final List<Person> persons = [
    Person(
        firstName: "Rafael", lastName: "Thomazelli", address: "Fiap Paulista")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: title,
        actions: [
          IconButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => AddPerson()));
          },
          icon: Icon(Icons.add))
        ],
      ),
      body: ListView(
        children: buildListItems(),
      ),
    );
  }

  List<Widget> buildListItems() {
    return persons
      .map((p) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5)),
            child: ListTile(
                leading: Text(p.id != null ? p.id.toString() : "-1"),
                title: Text(p.firstName),
                subtitle: Text(p.lastName)),
          )))
      .toList();
  }
}