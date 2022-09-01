import 'package:flutter/material.dart';

class AddPerson extends StatelessWidget {
  AddPerson({Key? key}) : super(key: key);

  final Text title = const Text("Nova Pessoa");

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: title),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Nome da pessoa",
                  labelText: "Nome da pessoa"
                ),
                controller: _nameController,
                validator: (value) {
                  if(value == null || value.isEmpty){
                    return "Insira o nome da pessoa";
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Endereço da pessoa",
                  labelText: "Sobrenome da Pessoa"
                ),
                controller: _lastNameController,
                validator: (value) {
                  if(value == null || value.isEmpty){
                    return "Insira a Sobrenome da Pessoa";
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Endereço da pessoa",
                  labelText: "Endereço da pessoa"
                ),
                controller: _addressController,
                validator: (value) {
                  if(value == null || value.isEmpty){
                    return "Insira a Endereço da pessoa";
                  }
                  return null;
                },
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {}
                    },
                    child: const Text("Gravar")),
              )
            ],
          ),
        ),
      ),
    );
  }
}