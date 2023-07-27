import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Info_Kasir extends StatefulWidget {
  const Info_Kasir({Key? key}) : super(key: key);

  @override
  State<Info_Kasir> createState() => _Info_KasirState();
}

class _Info_KasirState extends State<Info_Kasir> {
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
                    text: "Semua",
                  ),
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
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Montserrat",
                ),
              ),
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: Text(
                "KOTAK MASUK",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Color(0xff141414),
                ),
              ),
              centerTitle: true,
            ),
          ),
          length: 2,
          initialIndex: 0,
        ),
      ),
    );
  }
}
