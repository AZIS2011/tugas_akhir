import 'dart:convert';

import 'package:flutter/material.dart';
 import 'package:radja_coffe/ui/admin/beranda_admin.dart';
import 'package:http/http.dart' as http;

class EditStok extends StatefulWidget {
  const EditStok({Key? key}) : super(key: key);

  @override
  State<EditStok> createState() => _EditStokState();
}

class _EditStokState extends State<EditStok> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(fontFamily: "Montserrat"),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => AddProduct(),
                ));
          },
          child: Icon(Icons.add),
        ),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xffFFD700),
          title: Text(
            "Edit Stok",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: 20,
            ),
            ListTile(
              trailing: IconButton(
                icon: Icon(Icons.edit),
                onPressed: () {},
              ),
              title: Image.asset(
                "assets/images/mie_aceh_tumis.png",
                width: 200,
                height: 200,
              ),
            ),
            Divider(),
            ListTile(
              trailing: IconButton(
                icon: Icon(Icons.edit),
                onPressed: () {},
              ),
              title: Image.asset(
                "assets/images/mie_aceh_tumis.png",
                width: 200,
                height: 200,
              ),
            ),
            Divider(),
            ListTile(
              trailing: IconButton(
                icon: Icon(Icons.edit),
                onPressed: () {},
              ),
              title: Image.asset(
                "assets/images/mie_aceh_tumis.png",
                width: 200,
                height: 200,
              ),
            ),
            Divider(),
            ListTile(
              trailing: IconButton(
                icon: Icon(Icons.edit),
                onPressed: () {},
              ),
              title: Image.asset(
                "assets/images/mie_aceh_tumis.png",
                width: 200,
                height: 200,
              ),
            ),
            Divider(),
            ListTile(
              trailing: IconButton(
                icon: Icon(Icons.edit),
                onPressed: () {},
              ),
              title: Text('TEST 1'),
            )
          ]),
        ),
      ),
    );
  }
}

class AddProduct extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _namecontroller = TextEditingController();
  TextEditingController _descriptioncontroller = TextEditingController();
  TextEditingController _pricecontroller = TextEditingController();
  TextEditingController _imagecontroller = TextEditingController();
  SaveProduct() async {
    final response =
        await http.post(Uri.parse("http://10.0.2.2:8000/api/products"), body: {
      "name": _namecontroller.text,
      "description": _descriptioncontroller.text,
      "price": _pricecontroller.text,
      "image_url": _imagecontroller.text
    });
    print(response.body);
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: Text('Tambahkan Product'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              controller: _namecontroller,
              decoration: InputDecoration(labelText: "Name"),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Masukan Nama Anda";
                }
                return null;
              },
            ),
            TextFormField(
              controller: _descriptioncontroller,
              decoration: InputDecoration(labelText: "Deskripsi"),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Masukan Deskripsi";
                }
                return null;
              },
            ),
            TextFormField(
              controller: _pricecontroller,
              decoration: InputDecoration(labelText: "Harga"),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Masukan Harga";
                }
                return null;
              },
            ),
            TextFormField(
              controller: _imagecontroller,
              decoration: InputDecoration(labelText: "Gambar"),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Masukan Gambar";
                }
                return null;
              },
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  SaveProduct().then((value) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => Beranda_Admin(),
                        ));
                  });
                }
              },
              child: Text('SAVE'),
            ),
          ],
        ),
      ),
    );
  }
}
