import 'package:flutter/material.dart';
import 'package:page_inscription/MesPages/Liste.dart';
import 'package:page_inscription/MesPages/Page%20de%20Connexion/Formulaire_complet.dart';
import 'package:page_inscription/MesPages/Tags.dart';


class Produit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Produit',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.add),
            title: Text('Ajouter Produit'),
            onTap: () {
              // Update the UI by swapping out the drawer for the home page.
              Navigator.push(context,
                MaterialPageRoute(builder:(context)=>MonFormulaire()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.list),
            title: Text('Liste'),
            onTap: () {
              // Update the UI by swapping out the drawer for the settings page.
              Navigator.push(context,
                MaterialPageRoute(builder:(context)=>Liste()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.label),
            title: Text('Tags/Catégorie'),
            onTap: () {
              // Update the UI by swapping out the drawer for the settings page.
              Navigator.push(context,
                MaterialPageRoute(builder:(context)=>Tags()),
              );
            },
          ),
        ],
      ),
    );
  }
}




/