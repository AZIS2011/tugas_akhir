import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class InfoLaporan extends StatefulWidget {
  const InfoLaporan({Key? key}) : super(key: key);

  @override
  State<InfoLaporan> createState() => _InfoLaporanState();
}

class _InfoLaporanState extends State<InfoLaporan> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      child: Theme(
        data: ThemeData(fontFamily: "Montserrat"),
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: <Widget>[
                Tab(text: "Semua"),
                Tab(text: "Belum Dibaca"),
              ],

              unselectedLabelStyle: TextStyle(
                fontFamily: "Montserrat",
              ),
              // labelColor: Color(0xffFFEF02),
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
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
            automaticallyImplyLeading: false,
            title: Text(
              "LAPORAN",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Color(0xff141414),
              ),
            ),
            centerTitle: true,
          ),
        ),
      ),
      length: 2,
      initialIndex: 0,
    );
  }
}
