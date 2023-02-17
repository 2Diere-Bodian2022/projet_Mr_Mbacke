import'package:flutter/material.dart';
import 'package:page_inscription/MesPages/PagePrincipal.dart';

//Ma page de connexion
class PageConnexion extends StatelessWidget{
  const PageConnexion({Key? key}): super(key:key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:Text("Page de connexion"),
      ),
     body: Center(
       child: Column(
         children: [
           ElevatedButton(
             onPressed:(){
               Navigator.push(
                   context,
                   PageRouteBuilder(
                       pageBuilder:(_, __, ___) =>Principal()
                   )
               );
             },
             child: Text("Se Connecter"),
           ),
         ],
       ),
     ) ,
    );
  }

}