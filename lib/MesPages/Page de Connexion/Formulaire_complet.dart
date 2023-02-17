import 'package:flutter/material.dart';
import 'package:page_inscription/MesPages/Page%20de%20Connexion/tiroir.dart';
class MonFormulaire extends StatefulWidget {
  @override
  _MonFormulaireState createState() => _MonFormulaireState();
}

class _MonFormulaireState extends State<MonFormulaire> {
  final _formKey = GlobalKey<FormState>();
  String _ref = '';
  String _libelle = '';
  String _etatVente = '';
  String _etatAchat = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Ajouter un produit"),
    ),
        body: Form(
           key: _formKey,
           child: Padding(
             padding: const EdgeInsets.all(16.0),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                 Container(
                    decoration: BoxDecoration(
                    border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                   borderRadius: BorderRadius.circular(4.0),
                   ),
                    child: TextFormField(
                     decoration: InputDecoration(
                      labelText: 'Référence',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(16.0),
                      ),
                      validator: (value) {
                       if (value == null || value.isEmpty) {
                       return 'Le champ Référence est obligatoire';
                     }
                     return null;
                   },
                    onSaved: (value) {
                   _ref = value!;
                    },
                 ),
                ),
               SizedBox(height: 16.0),
                Container(
    decoration: BoxDecoration(
    border: Border.all(
    color: Colors.grey,
    width: 1.0,
    ),
    borderRadius: BorderRadius.circular(4.0),
    ),
    child: TextFormField(
    decoration: InputDecoration(
    labelText: 'Libellé',
    border: InputBorder.none,
    contentPadding: EdgeInsets.all(16.0),
    ),
    validator: (value) {
    if (value == null || value.isEmpty) {
    return 'Le champ Libellé est obligatoire';
    }
    return null;
    },
    onSaved: (value) {
    _libelle = value!;
    },
    ),
    ),
    SizedBox(height: 16.0),
    Container(
    decoration: BoxDecoration(
    border: Border.all(
    color: Colors.grey,
    width: 1.0,
    ),
    borderRadius: BorderRadius.circular(4.0),
    ),
    child: TextFormField(
    obscureText: true,
    decoration: InputDecoration(
    labelText: 'Etat (vente)',
    border: InputBorder.none,
    contentPadding: EdgeInsets.all(16.0),
    ),
    validator: (value) {
    if (value == null || value.isEmpty) {
    return 'Le champ Etat (vente) est obligatoire';
    }
    return null;
    },
    onSaved: (value) {
    _etatVente = value!;
    },
    ),
    ),
    SizedBox(height: 16.0),
    Container(
    decoration: BoxDecoration(
    border: Border.all(
    color: Colors.grey,
    width: 1.0,
    ),
    borderRadius: BorderRadius.circular(4.0),
    ),
    child: TextFormField(
    obscureText: true,
    decoration: InputDecoration(
    labelText: 'Etat (achat)',
    border: InputBorder.none,
    contentPadding: EdgeInsets.all(16.0),
    ),
    validator: (value) {
    if (value == null || value.isEmpty) {
    return 'Le champ Etat (achat) est obligatoire';
    }
    return null;
    },

    onSaved: (value) {
                  _etatAchat = value!;
                },
              )
               ),

              SizedBox(height: 32.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        // Do something with the user input.
                        print('Référence: $_ref');
                        print('Libellé: $_libelle');
                        print('Etat (vente): $_etatVente');
                        print('Etat (achat): $_etatAchat');
                      }
                    },
                    child: Text('Créer'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Annuler'),
                 ),
    ]
                 )
    ]
    )
    )
    )
    );
  }
}







