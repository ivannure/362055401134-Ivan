import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home(),
    );
  }
}

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  SizedBox(height: 80),
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    maxRadius: 30,
                    child: Icon(Icons.person),
                  ),
                  Text(
                    'Ivan Nur Efendi',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white),
                  ),
                  Text(
                    'NIM: 362055401134',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: Text(
                      'Menu Utama',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [Icon(Icons.book), Text('Jurusan')],
                  ),
                  Column(
                    children: [Icon(Icons.person), Text('Identitas')],
                  ),
                  Column(
                    children: [Icon(Icons.note), Text('Kartu Peserta')],
                  ),
                  Column(
                    children: [Icon(Icons.note_add), Text('Slip Pembayaran')],
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
              ),
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: Text(
                      'Informasi terbaru',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 380,
              decoration: BoxDecoration(
                color: Colors.grey[200],
              ),
              child: ListView(
                children: [
                  Card(
                    margin: EdgeInsets.all(15),
                    color: Color.fromRGBO(104, 164, 136, 100),
                    shadowColor: Colors.black,
                    child: ListTile(
                        contentPadding: EdgeInsets.all(20),
                        title: Text('Informasi SBMPTN',
                            style: TextStyle(fontSize: 16)),
                        subtitle: Text('Dapatkan Informasi SBMPTN Disini'),
                        leading: CircleAvatar(
                            backgroundColor: Colors.green,
                            child: Icon(Icons.notifications))),
                  ),
                  Card(
                    margin: EdgeInsets.all(15),
                    color: Color.fromRGBO(104, 164, 136, 100),
                    shadowColor: Colors.black,
                    child: ListTile(
                        contentPadding: EdgeInsets.all(20),
                        title: Text('Jadwal SBMPTN',
                            style: TextStyle(fontSize: 16)),
                        subtitle: Text('Dapatkan Jadwal SBMPTN Disini'),
                        leading: CircleAvatar(
                            backgroundColor: Colors.green,
                            child: Icon(Icons.notifications))),
                  ),
                  Card(
                    margin: EdgeInsets.all(15),
                    color: Color.fromRGBO(104, 164, 136, 100),
                    shadowColor: Colors.black,
                    child: ListTile(
                        contentPadding: EdgeInsets.all(20),
                        title: Text('Informasi SBMPTN',
                            style: TextStyle(fontSize: 16)),
                        subtitle: Text('Dapatkan Informasi SBMPTN Disini'),
                        leading: CircleAvatar(
                            backgroundColor: Colors.green,
                            child: Icon(Icons.notifications))),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class note extends StatelessWidget {
  const note({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(15),
      color: Colors.white,
      shadowColor: Colors.black,
      child: ListTile(
          contentPadding: EdgeInsets.all(20),
          title: Text('Cetak Kartu Peserta', style: TextStyle(fontSize: 16)),
          subtitle: Text('Silahkan Unduh Kartu Peserta Anda'),
          leading: CircleAvatar(
              backgroundColor: Colors.green, child: Icon(Icons.notifications))),
    );
  }
}

