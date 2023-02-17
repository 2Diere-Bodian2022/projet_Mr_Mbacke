 import 'package:flutter/material.dart';
import 'package:page_inscription/MesPages/Liste.dart';
import 'package:page_inscription/MesPages/Page%20de%20Connexion/Formulaire_complet.dart';
import 'package:page_inscription/MesPages/Page%20de%20Connexion/tiroir.dart';
import 'package:page_inscription/MesPages/PageAcceuil/HomePage.dart';
import 'package:page_inscription/MesPages/PagePrincipal.dart';
import 'package:page_inscription/MesPages/Tags.dart';

void main() {
  runApp(const MyApp());
}
//Debut de ma classe principale
class MyApp extends StatelessWidget {
  const MyApp({Key? key}): super(key: key) ;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(
       title:Text("Mon appli"),
    ),
       body:Tags(),
      )
    );
  }
}





