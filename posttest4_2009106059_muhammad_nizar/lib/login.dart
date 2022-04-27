import 'package:flutter/material.dart';
import 'package:posttest4_2009106059_muhammad_nizar/landing_page.dart';
import 'package:posttest4_2009106059_muhammad_nizar/home_page.dart';

class Hal2 extends StatefulWidget {
  const Hal2({Key? key}) : super(key: key);

  @override
  State<Hal2> createState() => _Hal2State();
}

Widget myJudul() {
  return Container(
    width: 300,
    height: 100,
    alignment: Alignment.center,
    margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
    decoration: BoxDecoration(
      color: const Color(0xFF76C9F3),
      borderRadius: BorderRadius.circular(20),
    ),
    child: const Text(
      "Form Login",
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: 'Caveat',
        fontSize: 40,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
  );
}

class _Hal2State extends State<Hal2> {
  @override
  String username = "", password = "";

  final controllerUsername = TextEditingController();
  final controllerpassword = TextEditingController();

  @override
  void dispose() {
    controllerUsername.dispose();
    controllerpassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var lebarukuran = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: const Color(0xFFD6F0FF),
        // appBar: AppBar(
        //   title: const Text("FishSekai by M Nizar 059"),
        //   backgroundColor: const Color(0xFF76C9F3),
        //   automaticallyImplyLeading: false,
        // ),
        body: ListView(
          children: [
            myJudul(),
            Container(
              padding: const EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //Align items
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    style: const TextStyle(
                      color: Color(0xFF76C9F3),
                      fontSize: 20,
                    ),
                    controller: controllerUsername,
                    decoration: const InputDecoration(
                      hintText: "Username Anda.....",
                      //  fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFF76C9F3), width: 2.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFF76C9F3), width: 2.0),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      // ignore: unnecessary_new
                      // ignore: prefer_const_constructors
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                      ),
                      labelText: "Username",
                      labelStyle: TextStyle(
                        color: Color(0xFF76C9F3),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  TextFormField(
                    style: const TextStyle(
                      color: Color(0xFF76C9F3),
                      fontSize: 20,
                    ),
                    controller: controllerpassword,
                    decoration: const InputDecoration(
                      hintText: "Password Anda.....",
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFF76C9F3), width: 2.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFF76C9F3), width: 2.0),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      // ignore: unnecessary_new
                      // ignore: prefer_const_constructors
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                      ),
                      labelText: "Password",
                      labelStyle: TextStyle(
                        color: Color(0xFF76C9F3),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  Container(
                    width: lebarukuran,
                    margin: const EdgeInsets.only(
                        top: 10, bottom: 30, left: 40, right: 40),
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          username = controllerUsername.text;
                          password = controllerpassword.text;
                        });
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (_) => Hal3(),
                          ),
                        );
                      },
                      child: const Text(
                        "Submit",
                        style: TextStyle(
                          fontSize: 35,
                          fontFamily: 'Caveat',
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xFF76C9F3),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32.0)),
                        minimumSize: const Size(200, 100),
                      ),
                    ),
                  ),
                  Container(
                    width: lebarukuran,
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (_) => Hal1(),
                          ),
                        );
                      },
                      child: const Text(
                        "Kembali",
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xFF76C9F3),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        minimumSize: const Size(50, 50),
                      ),
                    ),
                  ),
                  // ignore: avoid_unnecessary_containers
                ],
              ),
            ),
          ],
        ));
  }
}
