import 'package:flutter/material.dart';

class Laporan_Pelayan extends StatefulWidget {
  const Laporan_Pelayan({Key? key}) : super(key: key);

  @override
  State<Laporan_Pelayan> createState() => _Laporan_PelayanState();
}

class _Laporan_PelayanState extends State<Laporan_Pelayan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffFFD700),
        title: Text('Laporan'),
      ),
      floatingActionButton: IconButton(
        iconSize: 36,
        icon: Icon(
          Icons.add,
          // color: Colors.yellow,
        ),
        onPressed: () {},
      ),
    );
  }
}
