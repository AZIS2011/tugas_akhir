import 'dart:io';
import 'package:flutter/material.dart';
import 'package:radja_coffe/ui/pelayan/beranda_pelayan.dart';
import 'package:radja_coffe/ui/pelayan/daftar_menu.dart';
import 'package:radja_coffe/ui/pelayan/dashboard.dart';
import 'package:radja_coffe/ui/pelayan/pesanan.dart';
import 'package:radja_coffe/ui/pelayan/pilihan_menu.dart';

class NavBarPage extends StatefulWidget {
  final int? initTab;
  NavBarPage({this.initTab});

  @override
  _NavBarPageState createState() => _NavBarPageState();
}

class _NavBarPageState extends State<NavBarPage> {
  @override
  void initState() {
    _selectedNavBar = widget.initTab ?? 0;
    super.initState();
  }

  int _selectedNavBar = 0;

  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedNavBar = index;
    });
  }

  late bool _isloading;
  final _widgetOptions = [Dashboard(), Pilihan_Menu(), Pesanan()];

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(fontFamily: "Montserrat"),
      child: WillPopScope(
        onWillPop: () async {
          final value = await showDialog<bool>(
              context: context,
              builder: (context) {
                return AlertDialog(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  title: Text(
                    'Radja Coffe',
                    style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  content: Text(
                    'Anda Yakin Ingin Keluar ?',
                    style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 14,
                    ),
                  ),
                  actions: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xffFFD700)),
                        onPressed: () => exit(0),
                        child: Text(
                          'Ya',
                          style: TextStyle(
                            fontFamily: "Montserrat",
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xffFFD700)),
                        onPressed: () {
                          Navigator.of(context).pop(true);
                        },
                        child: Text(
                          'Tidak',
                          style: TextStyle(
                            fontFamily: "Montserrat",
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ))
                  ],
                );
              });
          if (value != null) {
            return Future.value(false);
          } else {
            return Future.value(true);
          }
        },
        child: Theme(
          data: ThemeData(fontFamily: "Montserrat"),
          child: Scaffold(
            body: _widgetOptions[_selectedNavBar],
            bottomNavigationBar: BottomNavigationBar(
              onTap: _changeSelectedNavBar,
              currentIndex: _selectedNavBar,
              backgroundColor: Color(0xffFFD700),
              elevation: 0,
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "Beranda",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.menu_book),
                  label: "Daftar Menu",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart_rounded),
                  label: "Pesanan",
                ),
              ],
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.black45,
              showSelectedLabels: true,
              selectedLabelStyle:
                  TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
