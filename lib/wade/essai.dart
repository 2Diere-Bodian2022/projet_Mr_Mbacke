import 'package:flutter/material.dart';

class SecondPages extends StatefulWidget {
  const SecondPages({Key? key}) : super(key: key);

  @override
  _SecondPagesState createState() => _SecondPagesState();
}

class _SecondPagesState extends State<SecondPages> {
  final _formKey = GlobalKey<FormState>();
  final _refController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _couleurController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Créer tag/categorie'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                controller: _refController,
                decoration: const InputDecoration(
                  labelText: 'Réf',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer la référence';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _descriptionController,
                decoration: const InputDecoration(
                  labelText: 'Description',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer la description';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _couleurController,
                decoration: const InputDecoration(
                  labelText: 'Couleur',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer la couleur';
                  }
                  return null;
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // TODO: Save form data to a database or send it to a server
                      }
                    },
                    child: const Text('Créer tag/catégorie'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Clear form data and close the page
                      _refController.clear();
                      _descriptionController.clear();
                      _couleurController.clear();
                      Navigator.of(context).pop();
                    },
                    child: const Text('Annuler'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

