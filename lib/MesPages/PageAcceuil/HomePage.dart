import 'package:flutter/material.dart';
import '../Page de Connexion/ConnexionPage.dart';
//Ma page Acceuil
class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          //Le logo
          Image.asset('Diere/Images/Logo_Dolibar.png'),
          const Text("Bienvenue sur Dolibar",
            style: TextStyle(
                fontSize: 20,
                fontFamily: 'Itim'
            ),
          ),
          //Pour le Bouton
          ElevatedButton(
            onPressed:(){
              Navigator.push(
                  context,
                  PageRouteBuilder(
                      pageBuilder:(_, __, ___) =>PageConnexion()
                  )
              );
            },
            child: Text("Se Connecter"),
          ),
        ],
      ),
    );
  }
}