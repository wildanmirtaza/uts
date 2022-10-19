import 'package:flutter/material.dart';

var fontFamilyHome = const TextStyle(
  fontFamily: 'Montserrat',
  fontSize: 20.0,
);

class LuasPersegi extends StatelessWidget {
  final int sisi;
  const LuasPersegi({Key? key, required this.sisi}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int luas = sisi.toInt() * sisi.toInt();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hasil Luas Persegi",
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
                "Sisi Persegi =  $sisi cm",
                style: fontFamilyHome,
              ),
            ),
            const Padding(padding: EdgeInsets.all(5.0)),
            Container(
              margin: const EdgeInsets.all(5.0),
              child: Text(
                "Luas Persegi = $luas cm",
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