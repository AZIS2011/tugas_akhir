import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:radja_coffe/ui/admin/edit_stok.dart';
import 'package:radja_coffe/ui/login/login.dart';

import 'info_laporan.dart';
import 'info_rekap_pembayaran.dart';
import 'tambah_akun.dart';

class Beranda_Admin extends StatefulWidget {
  const Beranda_Admin({Key? key}) : super(key: key);

  @override
  State<Beranda_Admin> createState() => _Beranda_AdminState();
}

class _Beranda_AdminState extends State<Beranda_Admin> {
  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
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
                        onPressed: () {
                      Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Halaman_Login()));
                        },
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
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    SizedBox(height: mediaQueryHeight / 12),
                    Image.asset(
                      "assets/images/radja_coffe.png",
                      // width: MediaQuery.of(context).size.width / 2,
                      // height: MediaQuery.of(context).size.height / 3,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "RADJA COFFE",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 12,
                    ),
                    ListTile(
                      onTap: (() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => InfoRekapPembayaran()));
                      }),
                      title: Text(
                        "LIHAT LAPORAN PEMBAYARAN",
                        style:
                            TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                    ListTile(
                      onTap: (() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Tambah_Akun()));
                      }),
                      title: Text(
                        "TAMBAH AKUN",
                        style:
                            TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                    ListTile(
                      onTap: (() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EditStok()));
                      }),
                      title: Text(
                        "EDIT PESANAN",
                        style:
                            TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                    ListTile(
                      onTap: (() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => InfoLaporan()));
                      }),
                      title: Text(
                        "LIHAT LAPORAN",
                        style:
                            TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
