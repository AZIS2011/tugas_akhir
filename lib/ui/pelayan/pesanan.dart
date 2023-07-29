import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Pesanan extends StatefulWidget {
  const Pesanan({Key? key}) : super(key: key);

  @override
  State<Pesanan> createState() => _PesananState();
}

class _PesananState extends State<Pesanan> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      child: Theme(
        data: ThemeData(fontFamily: "Montserrat"),
        child: Scaffold(
          appBar: AppBar(
            
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
                fontSize: 12,
                fontWeight: FontWeight.bold,
                fontFamily: "Montserrat",
              ),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
            // automaticallyImplyLeading: true,
            title: Text(
              "Pesanan",
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
      length: 3,
      initialIndex: 0,
    );
  }
}
