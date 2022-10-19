import 'package:flutter/material.dart';
import 'package:uts/rumus/segitiga/keliling.dart';
import 'package:uts/rumus/segitiga/luas.dart';

class SegitigaPage extends StatefulWidget {
  const SegitigaPage({Key? key}) : super(key: key);

  @override
  State<SegitigaPage> createState() => _SegitigaPageState();
}

class _SegitigaPageState extends State<SegitigaPage> {
  var fontFamilyHome = const TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 20,
  );
  int a = 0;
  int b = 0;
  int c = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Segitiga',
          style: fontFamilyHome,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const Padding(padding: EdgeInsets.all(10.0)),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: Text(
                "Silakan Masukkan Nilai a,b,c dari sebuah Segitiga",
                style: fontFamilyHome,
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Masukkan Nilai a',
                  hintStyle: fontFamilyHome,
                  suffix: const Text('cm'),
                ),
                keyboardType: TextInputType.number,
                onChanged: (text) {
                  setState(() {
                    a = int.parse(text);
                  });
                },
              ),
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Masukkan Nilai b',
                  hintStyle: fontFamilyHome,
                  suffix: const Text('cm'),
                ),
                keyboardType: TextInputType.number,
                onChanged: (text) {
                  setState(() {
                    b = int.parse(text);
                  });
                },
              ),
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Masukkan Nilai c',
                  hintStyle: fontFamilyHome,
                  suffix: const Text('cm'),
                ),
                keyboardType: TextInputType.number,
                onChanged: (text) {
                  setState(() {
                    c = int.parse(text);
                  });
                },
              ),
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => LuasSegitiga(
                            a: a,
                            b: b,
                            c: c,
                          ))),
                    );
                  },
                  child: Text(
                    'Luas Segitiga',
                    style: fontFamilyHome,
                    textAlign: TextAlign.center,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => KelilingSegitiga(
                            a: a,
                            b: b,
                            c: c,
                          ))),
                    );
                  },
                  child: Text(
                    'Keliling Segitiga',
                    style: fontFamilyHome,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}