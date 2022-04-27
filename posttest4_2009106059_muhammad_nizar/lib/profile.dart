import 'package:flutter/material.dart';
import 'package:posttest4_2009106059_muhammad_nizar/login.dart';
import 'package:posttest4_2009106059_muhammad_nizar/home_page.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        backgroundColor: Color(0xFF76C9F3),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          // background image and bottom contents
          Column(
            children: <Widget>[
              Container(
                height: 265.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: new AssetImage("assets/images/bglaut.jpg")),
                ),
              ),
              Expanded(
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
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        alignment: Alignment.center,
                        child: Text(
                          "Lumine", // bisa panggil username
                          style: const TextStyle(
                            fontSize: 30,
                            color: Color(0xFF76C9F3),
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                           top: 10, 
                           bottom: 10,
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          "Belum memakai firebase \nBisa memanggil nama Pengguna",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF76C9F3),
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          // Profile image
          Positioned(
            top: 150.0, // (background container size) - (circle height / 2)
            child: Container(
              height: 150.0,
              width: 150.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                image: DecorationImage(
                    image: new AssetImage("assets/images/lumine.jpg")),
              ),
            ),
          )
        ],
      ),
    );
  }
}
