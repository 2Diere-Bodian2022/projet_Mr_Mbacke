import 'package:flutter/material.dart';
import 'package:page_inscription/MesPages/Page%20de%20Connexion/tiroir.dart';


class MonFormulaire extends StatefulWidget {
  @override
  _MonFormulaireState createState() => _MonFormulaireState();
}

class _MonFormulaireState extends State<MonFormulaire> {
  final _formKey = GlobalKey<FormState>();
  String _Ref = '';
  String _Libelle = '';
  String _Etat_vente = '';
  String _Etat_Achat='';
  @override
  Widget build(BuildContext context) {
    return  Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Réf',
            ),
            validator: (value) {
              if (value==null || value.isEmpty) {
                return 'Le champ Réf est est obligatoire';
              }
              return null;
            },
            onSaved: (value) {
              _Ref = 'value';
            },
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Libellé',
            ),
            validator: (value) {
              if (value==null || value.isEmpty) {
                return 'Le champ Libllé est obligatoire';
              }
              return null;
            },
            onSaved: (value) {
              _Libelle = 'value';
            },
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Etat(vente)',
            ),
            validator: (value) {
              if (value==null || value.isEmpty) {
                return 'Le champ Etat(vente) est obligatoire';
              }
              return null;
            },
            onSaved: (value) {
              _Etat_vente = 'value';
            },
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Etat(Achat)',
            ),
            validator: (value) {
              if (value==null || value.isEmpty) {
                return 'Le champ Etat(Achat) est obligatoire';
              }
              return null;
            },
            onSaved: (value) {
              _Etat_Achat = 'value';
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  // Do something with the user input.
                  print('Ref: $_Ref');
                  print('Libelle: $_Libelle');
                  print('Etat_vente: $_Etat_vente');
                  print('Etat_Achat: $_Etat_Achat');
                }
              },
              child: Text('Créer'),
            ),
          ),
          ElevatedButton(
            onPressed:(){
              Navigator.push(
                  context,
                  PageRouteBuilder(
                      pageBuilder:(_, __, ___) =>Produit()
                  )
              );
            },
            child: Text("Annuler"),
          ),
        ],
      ),
    );
  }
}
