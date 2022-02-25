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
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),
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
              decoration: BoxDecoration(color: Colors.grey[200], borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))),
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: Text(
                      'Menu Utama',
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Icon(Icons.school),
                      Text('Jurusan')
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.person),
                      Text('Identitas')
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.format_list_numbered_rtl_rounded),
                      Text('Kartu Peserta')
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.attach_money),
                      Text('Slip Pembayaran')
                    ],
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
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
                    color: Colors.orange,
                    shadowColor: Colors.black,
                    child: ListTile(contentPadding: EdgeInsets.all(20), title: Text('Informasi SBMPTN', style: TextStyle(fontSize: 16)), subtitle: Text('Dapatkan Informasi SBMPTN Disini'), leading: CircleAvatar(backgroundColor: Colors.green, child: Icon(Icons.school_outlined))),
                  ),
                  Card(
                    margin: EdgeInsets.all(15),
                    color: Colors.orange,
                    shadowColor: Colors.black,
                    child: ListTile(contentPadding: EdgeInsets.all(20), title: Text('Jadwal SBMPTN', style: TextStyle(fontSize: 16)), subtitle: Text('Dapatkan Jadwal SBMPTN Disini'), leading: CircleAvatar(backgroundColor: Colors.green, child: Icon(Icons.school_outlined))),
                  ),
                  Card(
                    margin: EdgeInsets.all(15),
                    color: Colors.orange,
                    shadowColor: Colors.black,
                    child: ListTile(
                      contentPadding: EdgeInsets.all(20),
                      title: Text('Informasi SNMPTN', style: TextStyle(fontSize: 16)),
                      subtitle: Text('Dapatkan Informasi SNMPTN Disini'),
                      leading: CircleAvatar(backgroundColor: Colors.green, child: Icon(Icons.school_outlined)),
                    ),
                  )
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
      child: ListTile(contentPadding: EdgeInsets.all(20), title: Text('Cetak Kartu Peserta', style: TextStyle(fontSize: 16)), subtitle: Text('Silahkan Unduh Kartu Peserta Anda'), leading: CircleAvatar(backgroundColor: Colors.green, child: Icon(Icons.notifications))),
    );
  }
}

//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             title: Text('Beranda'),
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.notifications),
//             title: Text('Notifikasi'),
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.help),
//             title: Text('About'),
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             title: Text('Akun'),
//           ),
//         ],
//         currentIndex: 0,
//         selectedItemColor: Colors.green,
//         unselectedItemColor: Colors.grey,
//         showUnselectedLabels: true,
//       ),
//     );
//   }
// }
