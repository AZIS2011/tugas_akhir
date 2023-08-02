import 'package:flutter/material.dart';

import 'detail_pesanan.dart';

class Daftar_Menu extends StatefulWidget {
  const Daftar_Menu({Key? key}) : super(key: key);

  @override
  State<Daftar_Menu> createState() => _Daftar_MenuState();
}

class _Daftar_MenuState extends State<Daftar_Menu> {
  // TextEditingController _textEditingController = TextEditingController();

  List freshList = [
    {
      "image": "assets/images/naga.png",
      "text": "Juice Naga",
      "harga": "Rp.5000",
    },
    {
      "image": "assets/images/melon.png",
      "text": "Juice Melon",
      "harga": "Rp.5000",
    },
    {
      "image": "assets/images/pukat.png",
      "text": "Juice Alpuka ",
      "harga": "Rp.5000",
    },
    {
      "image": "assets/images/jeruk.png",
      "text": "Juice Jeruk",
      "harga": "Rp.5000",
    },
    {
      "image": "assets/images/semangka.png",
      "text": "Juice Semangka",
      "harga": "Rp.5000",
    },
    {
      "image": "assets/images/wortel.png",
      "text": "Juice Wortel",
      "harga": "Rp.5000",
    },
    {
      "image": "assets/images/pir.png",
      "text": "Juice Pir",
      "harga": "Rp.5000",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(fontFamily: "Montserrat"),
      child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Text(
              "Daftar Menu",
              style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            centerTitle: true,
            // leading: IconButton(
            //     onPressed: () {
            //       Navigator.pop(context);
            //     },
            //     icon: Icon(Icons.arrow_back, color: Color(0xff141414))),
            elevation: 0,
            backgroundColor: Colors.white,
            // title: Container(
            //   child: TextField(
            //     onTap: () {
            //       // Navigator.push(context,
            //       //     MaterialPageRoute(builder: (context) => Daftar_Menu()));
            //     },
            //     controller: _textEditingController,
            //     autofocus: false,
            //     keyboardType: TextInputType.name,
            //     textInputAction: TextInputAction.next,
            //     decoration: InputDecoration(
            //       border: OutlineInputBorder(
            //         borderRadius: BorderRadius.circular(20),
            //       ),

            //       //enabledBorder: InputBorder.none,
            //       focusedBorder: OutlineInputBorder(
            //         borderRadius: BorderRadius.all(
            //           Radius.circular(20),
            //         ),
            //         borderSide: BorderSide(
            //           color: Color(0xffFFD700),
            //           width: 2,
            //         ),
            //       ),
            //       contentPadding: EdgeInsets.fromLTRB(30, 15, 30, 15),
            //       hintText: 'Cari Makanan, Minuman, Jus',
            //       hintStyle: TextStyle(
            //         fontSize: 10,
            //       ),
            //       suffixIcon: Image.asset('assets/images/pilihan.png'),
            //       prefixIcon: Icon(
            //         Icons.search,
            //         color: Colors.grey,
            //         size: 20,
            //       ),
            //     ),
            //   ),
            // ),
          ),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 800,
                          child: ListView.builder(
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              itemCount: freshList.length,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    // Navigator.push(
                                    //     context,
                                    //     MaterialPageRoute(
                                    //         builder: (context) =>
                                    //             Detail_Pesanan()));
                                  },
                                  child: Container(
                                    padding: EdgeInsets.only(left: 10),
                                    height: 180.0,
                                    width: 100.0,
                                    color: Color(0xffffff),
                                    margin: EdgeInsets.only(
                                      bottom: 10,
                                    ),
                                    child: Stack(
                                      // overflow: Overflow.visible,
                                      children: [
                                        Positioned(
                                          left: -6,
                                          child: Image.asset(
                                            freshList[index]["image"],
                                          ),
                                        ),
                                        Positioned(
                                          left: 160,
                                          child: Text(
                                            freshList[index]["text"],
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 130,
                                          top: 20,
                                          child: Row(
                                            children: [
                                              // Image.asset(
                                              //   "images/location.png",
                                              //   color: Color(0xff52B69A),
                                              // ),
                                              // SizedBox(width: 2),
                                              // Text(
                                              //   "Padang, Sumatera Barat",
                                              //   style: TextStyle(
                                              //     color: Color(0xff52B69A),
                                              //     fontSize: 12,
                                              //   ),
                                              // )
                                            ],
                                          ),
                                        ),
                                        // Positioned(
                                        //   left: 130,
                                        //   top: 38,
                                        //   child: Text(
                                        //     'Opsi jaminan refund tersedia',
                                        //     style: TextStyle(
                                        //       color: Color(0xff868d97),
                                        //       fontSize: 11,
                                        //     ),
                                        //   ),
                                        // ),
                                        // Positioned(
                                        //   left: 130,
                                        //   bottom: 5,
                                        //   child: Row(
                                        //     children: [
                                        //       Icon(Icons.star_border,
                                        //           color: Color(0xff52B69A)),
                                        //       SizedBox(width: 2),
                                        //       Text(
                                        //         "(7/10)",
                                        //         style: TextStyle(
                                        //           color: Color(0xff52B69A),
                                        //           fontSize: 12,
                                        //         ),
                                        //       )
                                        //     ],
                                        //   ),
                                        // ),
                                        Positioned(
                                          right: 5,
                                          bottom: 10,
                                          child: Text(
                                            freshList[index]["harga"],
                                            style: TextStyle(
                                              color: Color(0xFF163D74),
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
