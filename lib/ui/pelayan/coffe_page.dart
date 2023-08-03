import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:radja_coffe/ui/pelayan/detail_pesanan.dart';

class CoffePage extends StatelessWidget {
  const CoffePage({Key? key}) : super(key: key);

  final String url = 'http://103.187.147.73/api/products';

  Future getProducts() async {
    var response = await http.get(Uri.parse(url));
    print(json.decode(response.body));
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
      return Theme(
      data: ThemeData(fontFamily: "Montserrat"),
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text('TESTING'),
        // ),
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
                        child: Card(
                          elevation: 3,
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
                                  height: 200,
                                  width: 200,
                                  child: Image.network(snapshot.data['data']
                                      [index]['image_url']),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      snapshot.data['data'][index]['name'],
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      snapshot.data['data'][index]['price'],
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    // Text(
                                    //   FormatCurrency.convertToIdr(snapshot.data['data'][index]['price']
                                    //   , 2),
                                    // ),
                                    // Text(
                                    //   NumberFormat.currency(
                                    //     locale: 'id',
                                    //     symbol: 'Rp.',
                                    //     decimalDigits: 0,

                                    //   ).format(
                                    //     snapshot.data['data'][index]['price'],
                                    //   ),
                                    //   style: TextStyle(
                                    //       fontSize: 14,
                                    //       color: Colors.black,
                                    //       fontWeight: FontWeight.bold),
                                    // ),
                                  ],
                                ),
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
      ),
    );
  }
}
