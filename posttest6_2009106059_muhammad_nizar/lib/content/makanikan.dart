// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:posttest6_2009106059_muhammad_nizar/content/details.dart';
import 'package:posttest6_2009106059_muhammad_nizar/home_page.dart';
import 'package:posttest6_2009106059_muhammad_nizar/main.dart';


class MakananIkan extends StatelessWidget {
  const MakananIkan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFD6F0FF),
        body: ListView(
          children: [
            MyJudul(judul: "Makanan Ikan"),
            SizedBox(
              height: 350,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: [
                  TombolA(judul: "Makanan Ikan Mutiara",
                   gambars: "assets/images/makmutiara.png",
                    page: DetailBarang(
                      nama: "Nama   : Makanan Ikan Mutiara",
                      jumlah: "Jumlah : 12",
                      harga: "Harga  : Rp. 7500",
                      jenis: "Jenis : Makanan Ikan",
                      gambar1: "assets/images/makmutiara.png"
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
    );
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
      margin: const EdgeInsets.only(left: 10, right: 10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(gambar),
        ),
      ),
    );
  }
}

class MyJudul extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const MyJudul({Key? key,  required this.judul});

  final String judul;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 100,
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.only(left: 30),
      child: Text(
        judul,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: 'Lato',
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Color(0xFF76C9F3),
        ),
      ),
    );
  }
}

class TombolA extends StatelessWidget {
  const TombolA({Key? key,
  required this.judul,
  required this.gambars,
  required this.page}) : super(key: key);

  final String judul;
  final String gambars;
  final page;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => page,
              ),
            );
          },
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
                SizeContainer(gambar: gambars),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    judul,
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF76C9F3),
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
      ),
      ),
    );
  }
}