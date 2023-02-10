import 'package:flutter/material.dart';
import 'package:page_inscription/MesPages/Fromulaire.dart';

void main() {
  runApp(const MyApp());
}
//Debut de ma classe principale
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //vrai debut
    return MaterialApp(
    home:Scaffold(
       appBar:AppBar(
         title:const Text("Acceuil"),
       ),
      body: Center(
        child:Column(
        children:   [
          Image.asset('Diere/Images/Logo_Dolibar.png',
          fit: BoxFit.cover,),
         const Text("Bienvenue sur Dolibar",
            style: TextStyle(
              fontSize: 24,
              fontFamily: 'Itim'
            ),
           ),
        ElevatedButton(
          onPressed: () {

          Navigator.push(context,
              MaterialPageRoute(builder: (context)=> PageInscription()
            ),
              //pageBuilder:(_, __, ___)=> PageInscription()
          );
            },


            child: Text("Je m'inscris",
          style: TextStyle(
            fontSize: 30
          ) ,
            ),
        )
        ],
        ),
      ),
    ),
    );
  }
}