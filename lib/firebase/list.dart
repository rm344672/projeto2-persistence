import 'package:flutter/material.dart';
import 'package:flutter_projeto2_persistence/firebase/add.dart';
import 'package:flutter_projeto2_persistence/firebase/models/car.dart';
import 'package:flutter_projeto2_persistence/sqlite/add.dart';
import 'package:flutter_projeto2_persistence/sqlite/daos/PersonDao.dart';
import 'package:flutter_projeto2_persistence/sqlite/models/person.dart';

class ListCarFirestoreWidget extends StatefulWidget {
  const ListCarFirestoreWidget({Key? key}) : super(key: key);

  final title = const Text("Lista de carros");

  @override
  _ListCarFirestoreWidgetState createState() => _ListCarFirestoreWidgetState();
}

class _ListCarFirestoreWidgetState extends State<ListCarFirestoreWidget> {
  List<Car> cars = [];

  @override
  void initState() {
    super.initState();
    getAll();
  }

  getAll() async {
   
  }

  insert(Person person) async {
   
  }

  delete(int index) async {
   
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: widget.title,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AddCar()))
                    .then((car) {
                  setState(() {
                    insert(car);
                  });
                });
              },
              icon: Icon(Icons.add))
        ],
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => buildListItem(index),
          separatorBuilder: (context, index) => const Divider(height: 1),
          itemCount: cars.length),
    );
  }

  Widget buildListItem(int index) {
    Car p = cars[index];
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(5)),
          child: ListTile(
              title: Text(p.name),
              subtitle: Text(p.brand),
              onLongPress: () {
                delete(index);
              }),
        ));
  }
}