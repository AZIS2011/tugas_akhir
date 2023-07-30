import 'package:flutter/material.dart';

class PilihanMeja extends StatefulWidget {
  const PilihanMeja({Key? key}) : super(key: key);

  @override
  State<PilihanMeja> createState() => _PilihanMejaState();
}

class _PilihanMejaState extends State<PilihanMeja> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(fontFamily: "Montserrat"),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "MEJA 01",
            style: TextStyle(
                color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back, color: Colors.black),
          ),
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 15),
          children: [
            Text(
              "Detail Pesanan Meja 01",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("SANGER PANAS"),
                          Text(" Rp. 7000"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("SANGER PANAS"),
                          Text(" Rp. 7000"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("SANGER PANAS"),
                          Text(" Rp. 7000"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Detail Kontak',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("SANGER PANAS"),
                          Text(" Rp. 7000"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("SANGER PANAS"),
                          Text(" Rp. 7000"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("SANGER PANAS"),
                          Text(" Rp. 7000"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 500,
            ),
            Row(
              children: [
                Row(
                  children: [
                    Text("Total"),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Rp.20.000"),
                  ],
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: MaterialButton(
                        onPressed: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => CheckOut(dataKeranjang)));
                        },
                        padding: EdgeInsets.symmetric(vertical: 15),
                        color: Color(0xffFFD700),
                        elevation: 0,
                        child: Text(
                          'KONFIRMASI',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class AlertDialogShow extends StatelessWidget {
  const AlertDialogShow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(fontFamily: "Montserrat"),
      child: AlertDialog(
        backgroundColor: Colors.yellow,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), // <-- Radius
        ),
        contentPadding: EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 24.0),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Image.asset(
                  "assets/images/checked.png",
                  width: 90,
                  height: 90,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                "PEMBAYARAN BERHASIL",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
