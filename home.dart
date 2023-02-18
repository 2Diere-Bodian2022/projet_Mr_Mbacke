import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 41, 176, 39),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            color: Color.fromARGB(255, 121, 243, 33),
            height: 500,
          )
        ],
      )),
      bottomNavigationBar: NavigationBar(),
    );
  }

  Widget NavigationBar() {
    return BottomNavigationBar(type: BottomNavigationBarType.fixed, items: [
      BottomNavigationBarItem(
        label: 'home',
        icon: Icon(Icons.home),
      ),
      BottomNavigationBarItem(
        label: 'home',
        icon: Icon(Icons.home),
      ),
      BottomNavigationBarItem(
        label: 'home',
        icon: Icon(Icons.home),
      ),
    ]);
  }
}
