import 'package:flutter/material.dart';
import 'package:radja_coffe/ui/kasir/info_kasir.dart';
import 'package:radja_coffe/ui/kasir/laporan_kasir.dart';
import 'package:radja_coffe/ui/kasir/pembayaran.dart';
import 'package:radja_coffe/ui/kasir/rekap_pembayaran.dart';
import 'package:radja_coffe/ui/login/login.dart';

class Beranda_Kasir extends StatefulWidget {
  const Beranda_Kasir({Key? key}) : super(key: key);

  @override
  State<Beranda_Kasir> createState() => _Beranda_KasirState();
}

class _Beranda_KasirState extends State<Beranda_Kasir> {
  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    return Theme(
      data: ThemeData(fontFamily: "Montserrat"),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: WillPopScope(
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
          child: SafeArea(
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
                                builder: (context) => Pembayaran()));
                      }),
                      title: Text(
                        "PEMBAYARAN",
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
                                builder: (context) => Rekap_Pembayaran()));
                      }),
                      title: Text(
                        "REKAP PEMBAYARAN",
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
                                builder: (context) => Info_Kasir()));
                      }),
                      title: Text(
                        "INFO",
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
                                builder: (context) => Laporan_Kasir()));
                      }),
                      title: Text(
                        "LAPORAN",
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
