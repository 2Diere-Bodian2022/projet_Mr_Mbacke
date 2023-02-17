import 'package:flutter/material.dart';
import 'package:page_inscription/MesPages/Liste.dart';
import 'package:page_inscription/MesPages/Page de Connexion/Formulaire_complet.dart';
import 'package:page_inscription/MesPages/Tags.dart';

class Produit extends StatefulWidget {

  @override
  _ProduitState createState() => _ProduitState();
}

class _ProduitState extends State<Produit> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    Liste(),
    Tags(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Produit"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // TODO: Implement search.
            },
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // TODO: Implement settings.
            },
          ),
        ],
      ),
      body:Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff0D47A1),
                Color(0xff42A5F5),
              ],
            ),
          ),

      ),

        floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MonFormulaire()),
          );
        },
        tooltip: 'Ajouter Produit',
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Liste',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.label),
            label: 'Tags/Catégories',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
