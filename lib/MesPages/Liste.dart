import 'package:flutter/material.dart';
import 'package:page_inscription/MesPages/Page%20de%20Connexion/Formulaire_complet.dart';

class SearchForm extends StatefulWidget {
  @override
  _SearchFormState createState() => _SearchFormState();
}

class _SearchFormState extends State<SearchForm> {
  final _formKey = GlobalKey<FormState>();

  String? _tags;
  String? _ref;
  String? _libelle;
  double? _prixVente;
  bool? _etatVente;
  bool? _etatAchat;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("Liste"),
    ),

         body: Container(
    decoration: BoxDecoration(
    gradient: LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Colors.blue.shade300, Colors.blue.shade800],
    ),
    ),
             child: Form(
    key: _formKey,
                    child: Padding(
    padding: const EdgeInsets.all(16.0),
                          child: Column(
    children: <Widget>[
    Container(
    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(8),
    ),
    child: TextFormField(
    decoration: InputDecoration(
    labelText: 'Tags',
    border: OutlineInputBorder(),
    ),
    onSaved: (value) => _tags = 'value',
    ),
    ),
    SizedBox(height: 16),
    Row(
    children: <Widget>[
    Expanded(
    child: Container(
    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(8),
    ),
    child: TextFormField(
    decoration: InputDecoration(
    labelText: 'Réf',
    border: OutlineInputBorder(),
    ),
    onSaved: (value) => _ref = 'value',
    ),
    ),
    ),
    SizedBox(width: 16),
    Expanded(
    child: Container(
    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(8),
    ),
    child: TextFormField(
    decoration: InputDecoration(
    labelText: 'Libellé',
    border: OutlineInputBorder(),
    ),
    onSaved: (value) => _libelle = 'value',
    ),
    ),
    ),
    ],
    ),
    SizedBox(height: 16),
    Row(
    children: <Widget>[
    Expanded(
    child: Container(
    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(8),
    ),
    child: TextFormField(
    decoration: InputDecoration(
    labelText: 'Prix de vente',
    border: OutlineInputBorder(),
    ),
    keyboardType: TextInputType.number,
    onSaved: (value) => _prixVente = double.parse('value'),
    ),
    ),
    ),
    SizedBox(width: 16),
    Column(
    children: <Widget>[
    Text('Etat (Vente)'),
    Switch(
    value: _etatVente ?? false,
    onChanged: (value) {
    setState(() {
    _etatVente = value;
    });
    },
    ),
    ],
    ),
    SizedBox(width: 16),
    Column(
    children: <Widget>[
    Text('Etat (Achat)'),
    Switch(
    value: _etatAchat ?? false,
    onChanged: (value) {
    setState(() {
    _etatAchat = value;
    });
    },
    ),
    ],
    ),
    ],
    ),
    SizedBox(height: 16),
                           Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
                                  IconButton(
    icon: Icon(Icons.search),
    onPressed: () {
    _formKey.currentState!.save();
    // Utiliser les valeurs de _tags, _ref, _libelle, _prixVente, _etatVente et _etatAchat pour effectuer la recherche
    },
    ),
    IconButton(
    icon: Icon(Icons.list),
    onPressed: () {
    // Afficher la liste des éléments
    },
    ),
    IconButton(
    icon: Icon(Icons.cancel),
    onPressed: () {
      _formKey.currentState!.reset();
      setState(() {
        _etatVente;
      }
      );
    }
    ),
    IconButton(
    icon: Icon(Icons.add),
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MonFormulaire()),
      );
    }
    )
    ]
    ),
    ]
    )
    )
    )

    )
    );
  }
}
