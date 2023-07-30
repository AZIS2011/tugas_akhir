import 'package:flutter/material.dart';
import 'package:radja_coffe/ui/pelayan/coffe_page.dart';
import 'package:radja_coffe/ui/pelayan/laporan_pelayan.dart';
import 'package:radja_coffe/ui/pelayan/mie_page.dart';
import 'package:radja_coffe/ui/pelayan/pesanan.dart';

import 'daftar_menu.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: Theme(
            data: ThemeData(fontFamily: "Montserrat"),
            child: Scaffold(
              appBar: AppBar(
                flexibleSpace: Container(
                  color: Colors.white,
                  height: 250,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        child: TextField(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Daftar_Menu()));
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
                            suffixIcon:
                                Image.asset('assets/images/pilihan.png'),
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.grey,
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
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
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Daftar_Menu()));
                                          },
                                          child: Column(
                                            children: [
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
                                                height: 4,
                                              ),
                                              Text('Daftar Menu'),
                                            ],
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Pesanan()));
                                          },
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 35,
                                                width: 40,
                                                color: Color(0xffFFD700),
                                                child: Column(
                                                  children: [
                                                    Icon(
                                                        Icons
                                                            .shopping_cart_rounded,
                                                        size: 32),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                height: 4,
                                              ),
                                              Text('Pesanan'),
                                            ],
                                          ),
                                        ),
                                        Column(
                                          children: [
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
                                              height: 4,
                                            ),
                                            Text('Status'),
                                          ],
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Laporan_Pelayan()));
                                          },
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 35,
                                                width: 40,
                                                color: Color(0xffFFD700),
                                                child: Column(
                                                  children: [
                                                    Icon(Icons.report,
                                                        size: 32),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                height: 4,
                                              ),
                                              Text('Laporan'),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(160),
                  child: TabBar(
                    // isScrollable: true,
                    tabs: <Widget>[
                      Tab(
                        text: "Coffe",
                      ),
                      Tab(
                        text: "Jus",
                      ),
                      Tab(
                        text: "Mie ",
                      ),
                      Tab(
                        text: "Teh",
                      ),
                    ],
                    unselectedLabelStyle: TextStyle(
                      fontFamily: "Montserrat",
                    ),
                    labelColor: Colors.black,
                    indicatorSize: TabBarIndicatorSize.tab,
                    unselectedLabelColor: Colors.grey,
                    indicatorColor: Colors.black,
                    indicator: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.yellow, Colors.yellow]),
                      borderRadius: BorderRadius.circular(0),
                    ),
                    labelStyle: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Montserrat",
                    ),
                  ),
                ),
                backgroundColor: Colors.transparent,
                elevation: 0,
                automaticallyImplyLeading: false,
                // title: Text(
                //   "Pesanan",
                //   style: TextStyle(
                //     fontWeight: FontWeight.bold,
                //     fontSize: 20,
                //     color: Color(0xff141414),
                //   ),
                // ),
                // centerTitle: true,
              ),
              body: TabBarView(
                children: [
                  CoffePage(),
                  Container(
                    color: Colors.black,
                  ),
                  MiePage(),
                  Container(
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
          ),
        ),
        length: 4,
        initialIndex: 0,
      ),
    );
  }
}
