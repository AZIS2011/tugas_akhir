import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:radja_coffe/ui/pelayan/detail_pesanan.dart';

class MiePage extends StatefulWidget {
  const MiePage({Key? key}) : super(key: key);

  @override
  State<MiePage> createState() => _MiePageState();
}

class _MiePageState extends State<MiePage> {
  @override
  Widget build(BuildContext context) {
    List acehList = [
      {
        "image": "assets/images/mie_aceh_basah.png",
        "judul": "Mie Aceh Basah",
        "harga": "12000",
      },
      {
        "image": "assets/images/mie_aceh_kering.png",
        "judul": "Mie Aceh Kering",
        "harga": "12000",
      },
      {
        "image": "assets/images/mie_goreng.png",
        "judul": "Mie Goreng Kuah",
        "harga": "12000",
      },
      {
        "image": "assets/images/mie_aceh_tumis.png",
        "judul": "Mie Aceh Tumis",
        "harga": "12000",
      },
    ];
    return SafeArea(
      child: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 500,
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: acehList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      // padding: EdgeInsets.only(),
                      height: 200.0,
                      width: 200.0,
                      margin: EdgeInsets.only(
                        right: 15,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => Detail_Pesanan()));
                        },
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Positioned(
                              left: 5,
                              child: Center(
                                child: Image.asset(acehList[index]["image"]),
                              ),
                            ),
                            Positioned(
                              top: 10,
                              right: 40,
                              child: Text(acehList[index]["judul"],
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                            // Positioned(
                            //   bottom: 20,
                            //   right: 20,
                            //   child: Text(
                            //     NumberFormat.currency(
                            //       locale: 'id',
                            //       symbol: 'Rp.',
                            //       decimalDigits: 0,
                            //     ).format(acehList[index]["harga"]),
                            //     style: TextStyle(
                            //       color: Colors.black,
                            //       fontSize: 12,
                            //       fontWeight: FontWeight.bold,
                            //     ),
                            //   ),
                            // ),
                            Positioned(
                              bottom: 5,
                              right: 10,
                              child: Icon(
                                Icons.star,
                                color: Color(0xffFFBC58),
                                size: 14,
                              ),
                            ),
                            Positioned(
                              bottom: 5,
                              right: 20,
                              child: Icon(
                                Icons.star,
                                color: Color(0xffFFBC58),
                                size: 14,
                              ),
                            ),
                            Positioned(
                              bottom: 5,
                              right: 30,
                              child: Icon(
                                Icons.star,
                                color: Color(0xffFFBC58),
                                size: 14,
                              ),
                            ),
                            Positioned(
                              bottom: 5,
                              right: 40,
                              child: Icon(
                                Icons.star,
                                color: Color(0xffFFBC58),
                                size: 14,
                              ),
                            ),
                            Positioned(
                              bottom: 5,
                              right: 50,
                              child: Icon(
                                Icons.star,
                                color: Color(0xffFFBC58),
                                size: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ),
        ),
      ),
    );
  }
}
