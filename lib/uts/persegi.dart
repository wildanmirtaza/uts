import 'package:flutter/material.dart';
import 'package:uts/rumus/persegi/keliling.dart';
import 'package:uts/rumus/persegi/luas.dart';

class PersegiPage extends StatefulWidget {
  const PersegiPage({Key? key}) : super(key: key);

  @override
  State<PersegiPage> createState() => _PersegiPageState();
}

class _PersegiPageState extends State<PersegiPage> {
  var fontFamilyHome = const TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 20.0,
  );
  int sisi = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Persegi",
          style: fontFamilyHome,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              const Padding(padding: EdgeInsets.all(5.0)),
              Container(
                margin: const EdgeInsets.all(5.0),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: "Input Sisi Persegi",
                      hintStyle: fontFamilyHome,
                      suffix: const Text('cm'),
                      labelStyle: fontFamilyHome),
                  onChanged: (text) {
                    setState(() {
                      sisi = int.parse(text);
                    });
                  },
                  keyboardType: TextInputType.number,
                ),
              ),
              const Padding(padding: EdgeInsets.all(15.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) =>
                                LuasPersegi(sisi: sisi.toInt()))),
                      );
                    },
                    child: Text(
                      "Luas Persegi",
                      style: fontFamilyHome,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) =>
                                KelilingPersegi(sisi: sisi.toInt()))),
                      );
                    },
                    child: Text(
                      "Keliling Persegi",
                      style: fontFamilyHome,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}