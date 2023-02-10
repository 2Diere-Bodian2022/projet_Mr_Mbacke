import 'package:flutter/material.dart';
import 'MesPages/PageAcceuil/HomePage.dart';
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
    home:HomePage(),

    );
  }
}




