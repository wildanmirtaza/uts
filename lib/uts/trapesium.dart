import 'package:flutter/material.dart';
import 'package:uts/rumus/trapesium/keliling.dart';
import 'package:uts/rumus/trapesium/luas.dart';

class TrapesiumPage extends StatefulWidget {
  const TrapesiumPage({Key? key}) : super(key: key);

  @override
  State<TrapesiumPage> createState() => _TrapesiumPageState();
}

class _TrapesiumPageState extends State<TrapesiumPage> {
  var fontFamilyHome = const TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 20.0,
  );
  int sisiAtas = 0;
  int sisiBawah = 0;
  int tinggi = 0;

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
                      labelText: "Input Sisi Atas",
                      hintStyle: fontFamilyHome,
                      suffix: const Text('cm'),
                      labelStyle: fontFamilyHome),
                  onChanged: (text) {
                    setState(() {
                      sisiAtas = int.parse(text);
                    });
                  },
                  keyboardType: TextInputType.number,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(5.0),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: "Input Sisi Bawah",
                      hintStyle: fontFamilyHome,
                      suffix: const Text('cm'),
                      labelStyle: fontFamilyHome),
                  onChanged: (text) {
                    setState(() {
                      sisiBawah = int.parse(text);
                    });
                  },
                  keyboardType: TextInputType.number,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(5.0),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: "Input Tinggi",
                      hintStyle: fontFamilyHome,
                      suffix: const Text('cm'),
                      labelStyle: fontFamilyHome),
                  onChanged: (text) {
                    setState(() {
                      tinggi = int.parse(text);
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
                          builder: ((context) => LuasTrapesium(
                        sisiAtas: sisiAtas,
                        sisiBawah: sisiBawah,
                        tinggi: tinggi,
                      ))
                      ));
                    },
                    child: Text(
                      "Luas Trapesium",
                      style: fontFamilyHome,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  // ElevatedButton(
                  //   onPressed: () {
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //         builder: ((context) => KelilingTrapesium(
                  //       sisiAtas: sisiAtas,
                  //       sisiBawah: sisiBawah,
                  //       tinggi: tinggi,
                  //     ))
                  //     );
                  //   },
                  //   child: Text(
                  //     "Keliling Trapesium",
                  //     style: fontFamilyHome,
                  //   ),
                  // ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}