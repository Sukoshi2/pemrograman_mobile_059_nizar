// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:posttest6_2009106059_muhammad_nizar/home_page.dart';
import 'package:posttest6_2009106059_muhammad_nizar/content/ikan.dart';
import 'package:posttest6_2009106059_muhammad_nizar/main.dart';
import 'package:get/get.dart';
import 'package:posttest6_2009106059_muhammad_nizar/form.dart';
import 'package:posttest6_2009106059_muhammad_nizar/controller/radioController.dart';
import 'package:posttest6_2009106059_muhammad_nizar/controller/textController.dart';

class FormDetail extends StatelessWidget {
  FormDetail({
    Key? key,
  }) : super(key: key);

  textController tc = Get.find();
  RadioController rc = Get.find();
  Widget myJudul1() {
    return Container(
      width: 300,
      height: 100,
      alignment: Alignment.center,
      margin: const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 20),
      decoration: BoxDecoration(
        color: const Color(0xFF76C9F3),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Text(
        "Pendataan Barang FishSekai",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'Lato',
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("FishSekai"),
          backgroundColor: const Color(0xFF76C9F3),
        ),
        backgroundColor: const Color(0xFFD6F0FF),
        body: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //Align items
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  myJudul1(),
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
                          margin: const EdgeInsets.only(left: 10, bottom: 10),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Nama Barang : ${tc.nama}",
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xFF76C9F3),
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 10, bottom: 10),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Jumlah Barang : ${tc.jumlah}",
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xFF76C9F3),
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 10, bottom: 10),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Harga Barang : ${tc.harga}",
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xFF76C9F3),
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 10, bottom: 10),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            rc.selectedRadio.value,
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
                ],
              ),
            ),
          ],
        ));
  }
}
