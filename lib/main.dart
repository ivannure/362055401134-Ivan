import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Belajar Form Flutter",
    home: BelajarForm(),
  ));
}

class BelajarForm extends StatefulWidget {
  @override
  _BelajarFormState createState() => _BelajarFormState();
}

class _BelajarFormState extends State<BelajarForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 130,
                height: 130,
                child: Center(child: Image(image: AssetImage('lib/asset/image/poliwangi.png'))),
              ),

              SizedBox(
                height: 30,
              ),
              Text('Selamat datang', style: TextStyle(fontSize: 20, color: Colors.black)),
              Text(
                "Silahkan Masukkan Email dan Password anda",
                style: TextStyle(fontSize: 10, color: Colors.black),
              ),
              SizedBox(
                height: 30,
              ),

              SizedBox(
                height: 20,
              ),
              Padding(padding: EdgeInsets.all(8)),
              TextFormField(
                decoration: new InputDecoration(
                  hintText: "Masukan Email anda",
                  labelText: "Email",
                  border: OutlineInputBorder(borderRadius: new BorderRadius.circular(5.0)),
                ),
              ),
              Padding(padding: EdgeInsets.all(8)),
              TextFormField(
                keyboardType: TextInputType.phone,
                decoration: new InputDecoration(
                  hintText: "Masukkan Password anda",
                  labelText: "Password",
                  border: OutlineInputBorder(borderRadius: new BorderRadius.circular(5.0)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                color: Colors.black,
                elevation: 10,
                child: Container(
                  height: 50,
                  width: 150,
                  child: InkWell(
                    splashColor: Colors.white,
                    // onTap: () => ,
                    child: Center(
                      child: Text(
                        'Daftar',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.black,
                elevation: 10,
                child: Container(
                  height: 50,
                  width: 150,
                  child: InkWell(
                    splashColor: Colors.white,
                    // onTap: () => ,
                    child: Center(
                      child: Text(
                        'Masuk',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              // tambahkan komponen seperti input field disini
            ],
          ),
        ),
      ),
    );
  }
}
