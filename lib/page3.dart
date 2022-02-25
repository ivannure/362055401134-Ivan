import 'package:flutter/material.dart';

void main() {
  runApp(Materialapp());
}

class Materialapp extends StatelessWidget {
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
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Notifikasi'),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: EdgeInsets.only(top: 100),
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(15),
            color: Colors.orange,
            shadowColor: Colors.black,
            child: ListTile(
                contentPadding: EdgeInsets.all(20),
                title: Text(keterangan[index], style: TextStyle(fontSize: 16)),
                subtitle: Text('Hi Ivan,silahkan cek Identitas anda disini'),
                leading: CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Icon(Icons.notifications))),
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
        currentIndex: 1,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
      ),
    );
  }
}
