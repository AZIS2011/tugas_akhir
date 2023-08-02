import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  final Map product;
  ProductDetail({required this.product});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Product'),
      
      ),
      body: Column(
        children: [
          Container(child: Image.network(product['image_url']),)
        ],
      ),
    );
  }
}
