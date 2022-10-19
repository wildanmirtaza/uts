import 'package:flutter/material.dart';
import 'package:uts/rumus/lingkaran/keliling.dart';
import 'package:uts/rumus/lingkaran/luas.dart';

class LingkaranPage extends StatefulWidget {
  const LingkaranPage({Key? key}) : super(key: key);

  @override
  State<LingkaranPage> createState() => _LingkaranPageState();
}

class _LingkaranPageState extends State<LingkaranPage> {
  var fontFamilyHome = const TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 20.0,
  );
  int r = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Lingkaran",
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
                      labelText: "Input Jari-Jari Lingkaran",
                      hintStyle: fontFamilyHome,
                      suffix: const Text('cm'),
                      labelStyle: fontFamilyHome),
                  onChanged: (text) {
                    setState(() {
                      r = int.parse(text);
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
                                LuasLingkaran(r: r.toInt()))),
                      );
                    },
                    child: Text(
                      "Luas Lingkaran",
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
                                KelilingLingkaran(r: r.toInt()))),
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