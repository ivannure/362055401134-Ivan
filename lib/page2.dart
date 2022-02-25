import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "UTS",
    home: menudata(),
    debugShowCheckedModeBanner: false,
  ));
}

class menudata extends StatefulWidget {
  @override
  _menudataState createState() => _menudataState();
}

class _menudataState extends State<menudata> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      color: Colors.green,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(padding: EdgeInsets.all(20)),
          Icon(
            Icons.person,
            size: 90,
          ),
          BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Beranda'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                title: Text('Notifikasi'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.help),
                title: Text('About'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                title: Text('Akun'),
              ),
            ],
            currentIndex: 0,
            selectedItemColor: Colors.green,
            unselectedItemColor: Colors.grey,
            showUnselectedLabels: true,
          ),
        ],
      ),
    ));
  }
}
