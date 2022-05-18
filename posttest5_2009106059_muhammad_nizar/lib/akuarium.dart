import 'package:flutter/material.dart';
import 'package:posttest5_2009106059_muhammad_nizar/akuariumdetails.dart';

class AkuariumData extends StatelessWidget {
  const AkuariumData({Key? key}) : super(key: key);

  Widget myJudul() {
    return Container(
      width: 300,
      height: 100,
      alignment: Alignment.center,
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFF76C9F3),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Text(
        "Akuarium",
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFD6F0FF),
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
                  InkWell(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 10,
                          color: const Color(0xFF76C9F3),
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: <Widget>[
                          SizeContainer(gambar: "assets/images/akuarium.png"),
                          Container(
                            alignment: Alignment.center,
                            child: const Text(
                              "Akuarium 20x20cm",
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xFF76C9F3),
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => AkuariumDetails(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

class SizeContainer extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const SizeContainer({Key? key, required this.gambar});

  final String gambar;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 250,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(gambar),
        ),
      ),
    );
  }
}
