import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

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
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => Info_Kasir()));
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
    );
  }
}
