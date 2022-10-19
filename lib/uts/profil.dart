import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  const profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title:Text("WILDAN HAFIZ MIRTAZA"),
          ),
          body: Center(
            child:
            SingleChildScrollView(
              child: Column(
                  children: [
                    SizedBox(height: 25,),
                    Container(
                      padding: EdgeInsets.all(100),
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/foto.jpeg"),
                            fit: BoxFit.cover,
                          ),
                          shape: BoxShape.circle
                      ),
                    ),
                    SizedBox(height: 5,),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Column(
                        children: [
                          Text(
                            'Nama : Wildan Hafiz Mirtaza',

                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'NIM : 124200027',

                            style: TextStyle(
                                fontSize: 22,
                                color: Colors.black
                            ),
                          ),
                          Text(
                            "Tempat, Tanggal Lahir  : Jepara, 12 Maret 2002",
                            style: TextStyle(
                                fontSize: 22,
                                color: Colors.black
                            ),
                          ),
                          Text(
                            "Hobi : Beribadah",
                            style: TextStyle(
                                fontSize: 22,
                                color: Colors.black
                            ),
                          )
                        ],
                      ),
                    )
                  ]
              ),
            ),
          ),
        )
    );
  }
}