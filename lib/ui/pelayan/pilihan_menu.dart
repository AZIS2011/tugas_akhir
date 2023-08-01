import 'package:flutter/material.dart';

class Pilihan_Menu extends StatefulWidget {
  const Pilihan_Menu({Key? key}) : super(key: key);

  @override
  State<Pilihan_Menu> createState() => _Pilihan_MenuState();
}

class _Pilihan_MenuState extends State<Pilihan_Menu> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(fontFamily: "Montserrat"),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.yellow,
          centerTitle: true,
          title: Text(
            'PILIHAN KATEGORU',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) =>JordanPage()));
                },
                title: const Text(
                  'Makanan',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {},
                title: const Text(
                  'Minuman',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {},
                title: const Text(
                  'Jus',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
