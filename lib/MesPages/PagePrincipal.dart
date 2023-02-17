import 'package:flutter/material.dart';
import 'package:page_inscription/MesPages/Page%20de%20Connexion/tiroir.dart';


class Principal extends StatelessWidget {
  const Principal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ElevatedButton(
            onPressed:(){
              Navigator.push(
                  context,
                  PageRouteBuilder(
                      pageBuilder:(_, __, ___) =>Produit()
                  )
              );
            },
            child: Text("Produit"),
          ),
        ],
      ),
    );
  }
}
