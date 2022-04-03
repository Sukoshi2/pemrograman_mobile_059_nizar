import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainPage(),

    );
  }
  }

class MainPage extends StatelessWidget {
  const MainPage({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;
    return Scaffold(appBar: AppBar(
        title: const Text("POSTTEST 1 Nizar"),
      ),
      body: Container(
        width: lebar,
        height: tinggi,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/akua.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child : Container(
        width: 250,
        height: 250,
        alignment: Alignment.center,       
        decoration: BoxDecoration(
          color: const Color(0xff4A9FF5),
          border: Border.all(
            color: const Color(0xff5FF4EE),
            width: 5,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Text("Muhammad Nizar -059",
          style: TextStyle(
            fontSize: 20,
            color: Color(0xffffffff),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),),
      );
  }
}
