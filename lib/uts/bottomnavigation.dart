import 'package:flutter/material.dart';
import 'mainscreen.dart';
import 'profil.dart';
class BottomNavPage extends StatefulWidget {

  @override
  _BottomNavPageState createState() => _BottomNavPageState();
}


class _BottomNavPageState extends State<BottomNavPage> {
  @override

  int _selectedTabIndex = 0;
  void _onNavBarTapped (int index){
    setState((){
      _selectedTabIndex = index;
    });
  }

  Widget build(BuildContext context) {

    final _listpage = <Widget>[
      MainScreen(),
      profile(),
    ];

    final _bottomNavBarItems = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
          icon: new Icon(Icons.home,),
          label: 'Beranda'
      ),
      BottomNavigationBarItem(
        icon: new Icon(Icons.accessibility_sharp),
        label: 'Profil',
      ),
    ];

    final _bottomNavbar = BottomNavigationBar(
      items: _bottomNavBarItems,
      currentIndex: _selectedTabIndex,
      backgroundColor: Colors.blue,
      selectedItemColor: Colors.black12,
      unselectedItemColor: Colors.white70,
      onTap: _onNavBarTapped,
    );

    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Center(
        child: _listpage[_selectedTabIndex],
      ),
      bottomNavigationBar: _bottomNavbar,
    );

  }
}