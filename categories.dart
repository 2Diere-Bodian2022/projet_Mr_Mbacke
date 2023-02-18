import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class categorieScreen extends StatefulWidget {
  const categorieScreen({super.key});

  @override
  State<categorieScreen> createState() => _categorieScreenState();
}

class _categorieScreenState extends State<categorieScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50.0,
              ),
              Form(
                child: Column(children: [
                  Text('Réf',
                      style: TextStyle(
                        color: Colors.purple,
                      )),
                  TextFormField(),
                  SizedBox(
                    height: 10.0,
                  ),
                ]),
              ),
              Form(
                child: Column(children: [
                  Text('Description'),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0.0),
                          borderSide: BorderSide(
                            color: Colors.grey,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                ]),
              ),
              Form(
                child: Column(children: [
                  Text('Couleur'),
                  TextFormField(),
                  SizedBox(
                    height: 10.0,
                  ),
                ]),
              ),
              Form(
                child: Column(children: [
                  Text('Ajouter dans'),
                  TextFormField(),
                  SizedBox(
                    height: 10.0,
                  ),
                ]),
              ),
              RaisedButton(
                Color: Colors.purple,
                onPressed: () => print('send'),
                child: Text('creer tag/categorie'.toUpperCase()),
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              RaisedButton(
                Color: Colors.purple,
                onPressed: () => print('send'),
                child: Text('annuler'.toUpperCase()),
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

RaisedButton(
    {required MaterialColor Color,
    required void Function() onPressed,
    required Text child,
    required TextStyle style}) {}
