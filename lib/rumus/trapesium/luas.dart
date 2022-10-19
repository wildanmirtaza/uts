import 'package:flutter/material.dart';

var fontFamilyHome = const TextStyle(
  fontFamily: 'Montserrat',
  fontSize: 20.0,
);

class LuasTrapesium extends StatelessWidget {
  final int sisiAtas;
  final int sisiBawah;
  final int tinggi;
  const LuasTrapesium({Key? key, required this.sisiAtas, required this.sisiBawah, required this.tinggi}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double luas = 0.5 * (sisiAtas.toInt() + sisiBawah.toInt()) * tinggi;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hasil Luas Trapesium",
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
                "Sisi Atas =  $sisiAtas cm",
                style: fontFamilyHome,
              ),
            ),
            const Padding(padding: EdgeInsets.all(5.0)),
            Container(
              margin: const EdgeInsets.all(5.0),
              child: Text(
                "Sisi Bawah =  $sisiBawah cm",
                style: fontFamilyHome,
              ),
            ),
            const Padding(padding: EdgeInsets.all(5.0)),
            Container(
              margin: const EdgeInsets.all(5.0),
              child: Text(
                "Tinggi =  $tinggi cm",
                style: fontFamilyHome,
              ),
            ),
            const Padding(padding: EdgeInsets.all(5.0)),
            Container(
              margin: const EdgeInsets.all(5.0),
              child: Text(
                "Luas Trapesium = $luas cm",
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