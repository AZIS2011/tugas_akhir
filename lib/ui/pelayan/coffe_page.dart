import 'package:flutter/material.dart';

class CoffePage extends StatefulWidget {
  const CoffePage({Key? key}) : super(key: key);

  @override
  State<CoffePage> createState() => _CoffePageState();
}

class _CoffePageState extends State<CoffePage> {
  List acehList = [
    {
      "image": "assets/images/mie_aceh_basah.png",
      "judul": "Mie Aceh Basah",
      "Harga": "Rp. 12000",
    },
    {
      "image": "assets/images/mie_aceh_kering.png",
      "judul": "Mie Aceh Kering",
      "Harga": "Rp. 12000",
    },
    {
      "image": "assets/images/mie_goreng.png",
      "judul": "Mie Goreng Kuah",
      "Harga": "Rp. 12000",
    },
    {
      "image": "assets/images/mie_aceh_tumis.png",
      "judul": "Mie Aceh Tumis",
      "Harga": "Rp. 12000",
    },
  ];
  @override
  Widget build(BuildContext context) {
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
                    );
                  }),
            ),
          ),
        ),
      ),
    );
  }
}
