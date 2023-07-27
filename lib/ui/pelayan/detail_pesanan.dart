import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Detail_Pesanan extends StatefulWidget {
  const Detail_Pesanan({Key? key}) : super(key: key);

  @override
  State<Detail_Pesanan> createState() => _Detail_PesananState();
}

class _Detail_PesananState extends State<Detail_Pesanan> {
  List image = [
    {
      "image": "assets/images/naga.png",
    },
    {"image": "assets/images/jeruk.png"},
    {"image": "assets/images/melon.png"},
  ];
  List<T> map<T>(List list, Function handle) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handle(i, list[i]));
    }
    return result;
  }

  int current = 0;
  int counter = 1;
  void minusItem() {
    if (counter == 1) {
      setState(() {
        counter;
      });
    } else {
      setState(() {
        counter--;
      });
    }
  }

  void addItem() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(fontFamily: "Montserrat"),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back, color: Colors.black),
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: map(image, (index, _) {
                    return Container(
                      width: 10,
                      height: 10,
                      margin: EdgeInsets.symmetric(
                        vertical: 0,
                        horizontal: 5,
                      ),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: current == index
                              ? Colors.yellowAccent
                              : Colors.lightBlueAccent.shade200),
                    );
                  }),
                ),
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'TESTING',
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('APA KABAR?////',
                                style: TextStyle(
                                  color: Colors.red.shade300,
                                  fontSize: 10,
                                )),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(height: 52),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            minusItem();
                          },
                          icon: Image.asset("assets/images/minus.png"),
                        ),
                        Text(
                          '$counter',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            addItem();
                          },
                          icon: Image.asset("assets/images/add.png"),
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
                                  'PESAN SEKARANG',
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
            ),
          ],
        ),
      ),
    );
  }
}
