import 'package:flutter/material.dart';
import 'package:radja_coffe/ui/kasir/info_kasir.dart';
import 'package:radja_coffe/ui/kasir/laporan_kasir.dart';
import 'package:radja_coffe/ui/kasir/pembayaran.dart';
import 'package:radja_coffe/ui/kasir/rekap_pembayaran.dart';

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
    );
  }
}
