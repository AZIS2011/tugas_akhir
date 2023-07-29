import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class EditStok extends StatefulWidget {
  const EditStok({Key? key}) : super(key: key);

  @override
  State<EditStok> createState() => _EditStokState();
}

class _EditStokState extends State<EditStok> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Stok"),
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
    );
  }
}
