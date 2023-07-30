import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class InfoRekapPembayaran extends StatefulWidget {
  const InfoRekapPembayaran({Key? key}) : super(key: key);

  @override
  State<InfoRekapPembayaran> createState() => _InfoRekapPembayaranState();
}

class _InfoRekapPembayaranState extends State<InfoRekapPembayaran> {
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
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
             backgroundColor: Color(0xffFFD700),
            elevation: 0,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
              ),
              color: Colors.black,
            ),
            title: Text(
              "REKAP PEMBAYARAN",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
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
