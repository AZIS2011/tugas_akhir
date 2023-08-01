import 'dart:convert';
import 'dart:core';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Testing extends StatefulWidget {
  const Testing({Key? key}) : super(key: key);

  @override
  State<Testing> createState() => _TestingState();
}

class _TestingState extends State<Testing> {
  final String url = 'http://10.0.2.2:8000/api//products';

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
                      child: Card(
                        elevation: 6,
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(2),
                              height: 120,
                              width: 120,
                              child: Image.network(
                                  snapshot.data['data'][index]['image_url']),
                            ),
                            Column(
                              children: [
                                Text(snapshot.data['data'][index]['name']),
                                
                              ],
                            ),
                            Text(snapshot.data['data'][index]
                                    ['price']),
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
