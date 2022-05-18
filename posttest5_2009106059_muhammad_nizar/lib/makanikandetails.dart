import 'package:flutter/material.dart';

class MakanIkanDetail1 extends StatelessWidget {
  const MakanIkanDetail1({Key? key}) : super(key: key);

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
        "Makanan Ikan",
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
    appBar:
    AppBar(
      title: Text("Makanan Ikan Detail"),
      backgroundColor: Color(0xFF76C9F3),
    );
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
                  SizeContainer(gambar: "assets/images/makmutiara.png"),
                  Container(
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
                        Container(
                          margin: const EdgeInsets.only(left: 15, top: 10),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "Nama Barang        : Makanan Ikan Mutiara",
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xFF76C9F3),
                              fontFamily: 'Lato',
                            ),
                          ),
                        ),
                        // ignore: avoid_unnecessary_containers
                        Container(
                          margin: const EdgeInsets.only(left: 15, top: 10),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "Jumlah Barang      : 25",
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xFF76C9F3),
                              fontFamily: 'Lato',
                            ),
                          ),
                        ),
                        // ignore: avoid_unnecessary_containers
                        Container(
                          margin: const EdgeInsets.only(left: 15, top: 10),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "Harga Barang satuan, Rp.17500",
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xFF76C9F3),
                              fontFamily: 'Lato',
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              left: 15, top: 10, bottom: 5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "Jenis Barang        : Makanan Ikan",
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xFF76C9F3),
                              fontFamily: 'Lato',
                            ),
                          ),
                        ),
                      ],
                    ),
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
