import 'package:flutter/material.dart';

class Laporan_Kasir extends StatefulWidget {
  const Laporan_Kasir({Key? key}) : super(key: key);

  @override
  State<Laporan_Kasir> createState() => _Laporan_KasirState();
}

class _Laporan_KasirState extends State<Laporan_Kasir> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(fontFamily: "Montserrat"),
      child: Scaffold(
        body: DefaultTabController(
          child: Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.black),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              bottom: TabBar(
                tabs: <Widget>[
                  Tab(
                    text: "Riwayat",
                  ),
                  Tab(text: "Dalam Proses"),
                  Tab(text: "Disajikan"),
                ],
                unselectedLabelStyle: TextStyle(
                  fontFamily: "Montserrat",
                ),
                labelColor: Colors.black,
                indicatorSize: TabBarIndicatorSize.tab,
                unselectedLabelColor: Colors.grey,
                indicatorColor: Colors.black,
                indicator: BoxDecoration(
                  gradient:
                      LinearGradient(colors: [Colors.yellow, Colors.yellow]),
                  borderRadius: BorderRadius.circular(0),
                ),
                labelStyle: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Montserrat",
                ),
              ),
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: Text(
                "LAPORAN",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Color(0xff141414),
                ),
              ),
              centerTitle: true,
            ),
          ),
          length: 3,
          initialIndex: 0,
        ),
      ),
    );
  }
}
