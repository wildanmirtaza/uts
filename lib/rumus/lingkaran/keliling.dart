import 'dart:math';

import 'package:flutter/material.dart';

var fontFamilyHome = const TextStyle(
  fontFamily: 'Montserrat',
  fontSize: 20.0,
);

class KelilingLingkaran extends StatelessWidget {
  final int r;
  const KelilingLingkaran({Key? key, required this.r}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double keliling = pi * ( 2 * r.toInt());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hasil Luas Lingkaran",
          style: fontFamilyHome,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Padding(padding: EdgeInsets.all(5.0)),
            Container(
              margin: const EdgeInsets.all(5.0),
              child: Text(
                "Jari-Jari Lingkaran =  $r cm",
                style: fontFamilyHome,
              ),
            ),
            const Padding(padding: EdgeInsets.all(5.0)),
            Container(
              margin: const EdgeInsets.all(5.0),
              child: Text(
                "Keliling Lingkaran = $keliling cm",
                style: fontFamilyHome,
              ),
            ),
            const Padding(padding: EdgeInsets.all(15.0)),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Kembali",
                  style: fontFamilyHome,
                ))
          ],
        ),
      ),
    );
  }
}