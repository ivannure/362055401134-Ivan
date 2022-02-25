import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: pagelist(),
    );
  }
}

class pagelist extends StatelessWidget {
  final List keterangan = [
    "Cetak Kartu Peserta",
    "Lengkapi Identitas",
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black, title: Text('Notifikasi')),
      body: ListView.builder(
        padding: EdgeInsets.only(top: 100),
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(keterangan[index], style: TextStyle(fontSize: 30)),
              subtitle: Text('Hi Ivan, Silahkan lihat identitas anda'),
              leading: CircleAvatar(
                child: Icon(
                  Icons.notifications,
                ),
              ),
            ),
          );
        },
        itemCount: keterangan.length,
      ),
      bottomNavigationBar: BottomNavigationBar(
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
    );
  }
}
