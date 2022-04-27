import 'package:flutter/material.dart';
import 'package:posttest4_2009106059_muhammad_nizar/home_page.dart';
class Form1 extends StatefulWidget {
  const Form1({ Key? key }) : super(key: key);

  @override
  State<Form1> createState() => _Form1State();
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
      "Pendataan Barang FishSekai",
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: 'Caveat',
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
  );
}

class _Form1State extends State<Form1> {
  String namaBarang = "", jumlahBarang = "", hargaBarang = "";

  final controllerNamaBarang = TextEditingController();
  final controllerjumlahBarang = TextEditingController();
  final controllerhargaBarang = TextEditingController();

  List<String> jenisBar = ['Ikan', 'Makanan Ikan', 'Akuarium'];
  String jenisBarang = "";

  @override
  void dispose() {
    controllerNamaBarang.dispose();
    controllerjumlahBarang.dispose();
    controllerhargaBarang.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var lebarukuran = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: const Color(0xFFD6F0FF),
        appBar: AppBar(
          title: const Text("FishSekai"),
          backgroundColor: const Color(0xFF76C9F3),
        ),
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
                    controller: controllerNamaBarang,
                    decoration: const InputDecoration(
                      hintText: "Isi Nama Barang yang ingin dimasukan",
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
                      labelText: "Nama Barang",
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
                    controller: controllerjumlahBarang,
                    decoration: const InputDecoration(
                      hintText: "Isi Jumlah Barang yang ingin dimasukan",
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
                      labelText: "Jumlah Barang",
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
                    controller: controllerhargaBarang,
                    decoration: const InputDecoration(
                      hintText: "Isi Harga Barang yang ingin dimasukan",
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
                      labelText: "Harga Barang",
                      labelStyle: TextStyle(
                        color: Color(0xFF76C9F3),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Jenis Barang : ",
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'Caveat',
                      color: Color(0xFF76C9F3),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  for (var item in jenisBar)
                    Row(
                      children: [
                        Radio(
                            fillColor: MaterialStateColor.resolveWith(
                                (states) => const Color(0xFF76C9F3)),
                            focusColor: const Color(0xFF76C9F3),
                            value: item,
                            groupValue: jenisBarang,
                            onChanged: (v) {
                              setState(() {
                                jenisBarang = v.toString();
                              });
                            }),
                        Text(item,
                            style: const TextStyle(
                              color: Color(0xFF76C9F3),
                              fontSize: 20,
                            )),
                      ],
                    ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: lebarukuran,
                    margin: const EdgeInsets.only(
                        top: 10, bottom: 30, left: 40, right: 40),
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          namaBarang = controllerNamaBarang.text;
                          jumlahBarang = controllerjumlahBarang.text;
                          hargaBarang = controllerhargaBarang.text;
                        });
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
                  // ignore: avoid_unnecessary_containers
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
                          child: Text(
                            "Nama Barang        : $namaBarang",
                            style: const TextStyle(
                              fontSize: 22,
                              color: Color(0xFF76C9F3),
                              fontFamily: 'Caveat',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        // ignore: avoid_unnecessary_containers
                        Container(
                          margin: const EdgeInsets.only(left: 15, top: 10),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Jumlah Barang      : $jumlahBarang",
                            style: const TextStyle(
                              fontSize: 22,
                              color: Color(0xFF76C9F3),
                              fontFamily: 'Caveat',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        // ignore: avoid_unnecessary_containers
                        Container(
                          margin: const EdgeInsets.only(left: 15, top: 10),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Harga Barang satuan, Rp.$hargaBarang",
                            style: const TextStyle(
                              fontSize: 22,
                              color: Color(0xFF76C9F3),
                              fontFamily: 'Caveat',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              left: 15, top: 10, bottom: 5),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Jenis Barang        : $jenisBarang",
                            style: const TextStyle(
                              fontSize: 22,
                              color: Color(0xFF76C9F3),
                              fontFamily: 'Caveat',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              left: 15, top: 10, bottom: 10),
                          alignment: Alignment.center,
                          child: const Text(
                            "Sudah berhasil di Submit!!",
                            style: TextStyle(
                              fontSize: 22,
                              color: Color(0xFF76C9F3),
                              fontFamily: 'Caveat',
                              fontWeight: FontWeight.bold,
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
