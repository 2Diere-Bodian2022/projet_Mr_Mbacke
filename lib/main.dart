 import 'package:flutter/material.dart';
import 'package:page_inscription/MesPages/Page%20de%20Connexion/Formulaire_complet.dart';
import 'package:page_inscription/MesPages/Page%20de%20Connexion/tiroir.dart';



import 'package:page_inscription/MesPages/PagesInscription/Caract%C3%A9ristique/Ecran_login/Page_Login.dart';


void main() {
  runApp(const MyApp());
}
//Debut de ma classe principale
class MyApp extends StatelessWidget {
  const MyApp({Key? key}): super(key: key) ;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     title: 'Login',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: Produit(),
    );
  }
}





