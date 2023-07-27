import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:radja_coffe/ui/pelayan/navigation_bar.dart';
import 'package:radja_coffe/ui/pelayan/pilihan_menu.dart';

import 'daftar_menu.dart';

class Beranda_Pelayan extends StatefulWidget {
  const Beranda_Pelayan({Key? key}) : super(key: key);

  @override
  State<Beranda_Pelayan> createState() => _Beranda_PelayanState();
}

class _Beranda_PelayanState extends State<Beranda_Pelayan> {
  TextEditingController _textEditingController = TextEditingController();
  TextEditingController SearchField = new TextEditingController();
  List freshList = [
    {
      "image": "assets/images/naga.png",
    },
    {"image": "assets/images/jeruk.png"},
    {"image": "assets/images/melon.png"},
  ];
  List JuiceList = [
    {
      "image": "assets/images/naga.png",
      "judul": "Juice Naga",
    },
    {
      "image": "assets/images/pukat.png",
      "judul": "Juice Alpukat",
    },
    {
      "image": "assets/images/jeruk.png",
      "judul": "Juice Jeruk",
    },
    {
      "image": "assets/images/melon.png",
      "judul": "Juice Melon",
    },
  ];
  List acehList = [
    {
      "image": "assets/images/mie_aceh_basah.png",
      "judul": "Mie Aceh Basah",
    },
    {
      "image": "assets/images/mie_aceh_kering.png",
      "judul": "Mie Aceh Kering",
    },
    {
      "image": "assets/images/mie_goreng.png",
      "judul": "Mie Goreng",
    },
    {
      "image": "assets/images/mie_aceh_tumis.png",
      "judul": "Mie Aceh Tumis",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        // leading: IconButton(
        //     onPressed: () {
        //       Navigator.pop(context);
        //     },
        //     icon: Icon(Icons.arrow_back, color: Color(0xff52B69A))),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Container(
          child: TextField(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Daftar_Menu()));
            },
            controller: _textEditingController,
            autofocus: false,
            keyboardType: TextInputType.name,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),

              //enabledBorder: InputBorder.none,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                borderSide: BorderSide(
                  color: Color(0xffFFD700),
                  width: 2,
                ),
              ),
              contentPadding: EdgeInsets.fromLTRB(30, 15, 30, 15),
              hintText: 'Cari Makanan, Minuman, Jus',
              hintStyle: TextStyle(
                fontSize: 10,
              ),
              suffixIcon: Image.asset('assets/images/pilihan.png'),
              prefixIcon: Icon(
                Icons.search,
                color: Colors.grey,
                size: 20,
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(20),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xffFFD700),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 16,
                                      ),
                                      Container(
                                        height: 35,
                                        width: 40,
                                        color: Color(0xffFFD700),
                                        child: Column(
                                          children: [
                                            Icon(
                                              Icons.menu_book,
                                              size: 32,
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 42,
                                      ),
                                      Container(
                                        height: 35,
                                        width: 40,
                                        color: Color(0xffFFD700),
                                        child: Column(
                                          children: [
                                            Icon(Icons.shopping_cart_rounded,
                                                size: 32),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 32,
                                      ),
                                      Container(
                                        height: 35,
                                        width: 40,
                                        color: Color(0xffFFD700),
                                        child: Column(
                                          children: [
                                            Image.asset(
                                                'assets/images/status.png'),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 25,
                                      ),
                                      Container(
                                        height: 35,
                                        width: 40,
                                        color: Color(0xffFFD700),
                                        child: Column(
                                          children: [
                                            Icon(Icons.report, size: 32),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Daftar Menu",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Pesanan",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Status",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Laporan",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    // Container(
                    //   height: 155,
                    //   child: ListView.builder(
                    //       scrollDirection: Axis.horizontal,
                    //       shrinkWrap: true,
                    //       itemCount: freshList.length,
                    //       itemBuilder: (context, index) {
                    //         return Container(
                    //           padding: EdgeInsets.only(left: 10),
                    //           height: 190.0,
                    //           width: 290.0,
                    //           margin: EdgeInsets.only(
                    //             right: 30,
                    //           ),
                    //           child: Stack(
                    //             clipBehavior: Clip.none,
                    //             children: [
                    //               Positioned(
                    //                   left: -6,
                    //                   child: Image.asset(
                    //                       freshList[index]["image"])),
                    //             ],
                    //           ),
                    //         );
                    //       }),
                    // ),
                    // SizedBox(
                    //   height: 20,
                    // ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Kategori",
                          style: TextStyle(
                            color: Color(0xff141414),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 110,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Pilihan_Menu()));
                          },
                          child: Column(
                            children: [
                              Text(
                                "Lihat Semua >",
                                style: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => Detail()));
                      },
                      child: Container(
                        height: 220,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: JuiceList.length,
                            itemBuilder: (context, index) {
                              return Container(
                                padding: EdgeInsets.only(),
                                height: 200.0,
                                width: 190.0,
                                margin: EdgeInsets.only(
                                  right: 15,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                ),
                                child: Stack(
                                  // overflow: Overflow.visible,
                                  children: [
                                    Center(
                                      child: Image.asset(
                                          JuiceList[index]["image"]),
                                    ),
                                    Positioned(
                                      bottom: 5,
                                      left: 50,
                                      child: Text(JuiceList[index]["judul"],
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                          )),
                                    ),
                                    // Positioned(
                                    //   bottom: 5,
                                    //   right: 18,
                                    //   child: Row(
                                    //     children: [
                                    //       Text('Padang, Sumatera Barat',
                                    //           style: TextStyle(
                                    //             fontSize: 10,
                                    //           )),
                                    //     ],
                                    //   ),
                                    // ),
                                  ],
                                ),
                              );
                            }),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Rekomendasi",
                      style: TextStyle(
                        color: Color(0xff141414),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 270,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: acehList.length,
                          itemBuilder: (context, index) {
                            return Container(
                              padding: EdgeInsets.only(),
                              height: 200.0,
                              width: 190.0,
                              margin: EdgeInsets.only(
                                right: 15,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                              ),
                              child: Stack(
                                // overflow: Overflow.visible,
                                children: [
                                  Center(
                                    child:
                                        Image.asset(acehList[index]["image"]),
                                  ),
                                  Positioned(
                                    bottom: 30,
                                    left: 30,
                                    child: Text(acehList[index]["judul"],
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ),
                                ],
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
