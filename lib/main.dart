import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Postest 1 Miftahul Haq",
          style: TextStyle(color: Colors.blueGrey),
        ),
        backgroundColor: Colors.blue[100],
        elevation: 1,
      ),
      body: Container(
          width: lebar,
          height: tinggi,
          alignment: Alignment.topCenter,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            children: [
              Center(
                child: Image.network(
                  'https://img.freepik.com/free-vector/illustration-user-avatar-icon_53876-5907.jpg',
                  width: lebar / 2.5,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  margin: EdgeInsets.only(top: 0.0),
                  child: Text(
                    "MIFTAHUL HAQ",
                    style: TextStyle(fontSize: 18, color: Colors.blueGrey),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
