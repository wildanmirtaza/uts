import 'package:flutter/material.dart';
import 'package:uts/uts/trapesium.dart';
import 'package:uts/uts/segitiga.dart';
import 'package:uts/uts/lingkaran.dart';
import 'package:uts/uts/persegi.dart';

var fontFamilyHome = const TextStyle(
  fontFamily: 'Montserrat',
  fontSize: 20.0,
);

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Bangun Datar',
          style: fontFamilyHome,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const Padding(padding: const EdgeInsets.all(15.0)),
              Container(
                margin:
                const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => const TrapesiumPage()),
                      ),
                    );
                  },
                  child: Text('Trapesium', style: fontFamilyHome),
                ),
              ),
              Container(
                margin:
                const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all(Colors.blue)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => const SegitigaPage()),
                      ),
                    );
                  },
                  child: Text('Segitiga', style: fontFamilyHome),
                ),
              ),
              Container(
                margin:
                const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all(Colors.blue)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const LingkaranPage())));
                  },
                  child: Text('Lingkaran', style: fontFamilyHome),
                ),
              ),
              Container(
                margin:
                const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all(Colors.blue)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const PersegiPage())));
                  },
                  child: Text('Persegi', style: fontFamilyHome),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}