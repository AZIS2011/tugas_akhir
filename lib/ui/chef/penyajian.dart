import 'package:flutter/material.dart';

class Penyajian extends StatefulWidget {
  const Penyajian({Key? key}) : super(key: key);

  @override
  State<Penyajian> createState() => _PenyajianState();
}

class _PenyajianState extends State<Penyajian> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        fontFamily: "Montserrat",
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back, color: Colors.black),
          ),
          title: Text(
            "PROGRESS",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
