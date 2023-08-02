import 'dart:convert';
import 'dart:core';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:radja_coffe/ui/pelayan/detail_pesanan.dart';

class Testing extends StatefulWidget {
  const Testing({Key? key}) : super(key: key);

  @override
  State<Testing> createState() => _TestingState();
}

class _TestingState extends State<Testing> {
  final String url = 'http://10.0.2.2:8000/api/products';

  Future getProducts() async {
    var response = await http.get(Uri.parse(url));
    print(json.decode(response.body));
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TESTING'),
      ),
      body: FutureBuilder<dynamic>(
          future: getProducts(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data['data'].length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 180,
                      width: 200,
                      margin: EdgeInsets.only(
                        right: 15,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      // child: Stack(
                      //   children: [
                      //     Positioned(
                      //       left: 5,
                      //       child: Center(
                      //         child: Image.network(
                      //             snapshot.data['data'][index]['image_url']),
                      //       ),
                      //     ),
                      //     Positioned(
                      //       top: 10,
                      //       right: 40,
                      //       child: Center(
                      //           child:
                      //               Text(snapshot.data['data'][index]['name'])),
                      //     ),
                      //     Positioned(
                      //       bottom: 5,
                      //       right: 10,
                      //       child: Icon(
                      //         Icons.star,
                      //         color: Color(0xffFFBC58),
                      //         size: 14,
                      //       ),
                      //     ),
                      //     Positioned(
                      //       bottom: 5,
                      //       right: 20,
                      //       child: Icon(
                      //         Icons.star,
                      //         color: Color(0xffFFBC58),
                      //         size: 14,
                      //       ),
                      //     ),
                      //     Positioned(
                      //       bottom: 5,
                      //       right: 30,
                      //       child: Icon(
                      //         Icons.star,
                      //         color: Color(0xffFFBC58),
                      //         size: 14,
                      //       ),
                      //     ),
                      //     Positioned(
                      //       bottom: 5,
                      //       right: 40,
                      //       child: Icon(
                      //         Icons.star,
                      //         color: Color(0xffFFBC58),
                      //         size: 14,
                      //       ),
                      //     ),
                      //     Positioned(
                      //       bottom: 5,
                      //       right: 50,
                      //       child: Icon(
                      //         Icons.star,
                      //         color: Color(0xffFFBC58),
                      //         size: 14,
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      child: Card(
                        elevation: 6,
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Detail_Pesanan(
                                              product: snapshot.data['data']
                                                  [index],
                                            )));
                              },
                              child: Container(
                                padding: EdgeInsets.all(2),
                                height: 150,
                                width: 150,
                                child: Image.network(
                                    snapshot.data['data'][index]['image_url']),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(snapshot.data['data'][index]['name']),
                                 Text(snapshot.data['data'][index]['price']),
                              ],
                            ),
                           
                          ],
                        ),
                      ),
                    );
                  });
            } else {
              return Text('data error');
            }
          }),
    );
  }
}
