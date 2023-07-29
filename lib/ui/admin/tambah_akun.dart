import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Tambah_Akun extends StatefulWidget {
  const Tambah_Akun({Key? key}) : super(key: key);

  @override
  State<Tambah_Akun> createState() => _Tambah_AkunState();
}

class _Tambah_AkunState extends State<Tambah_Akun> {
  int _value = 1;

  bool _value1 = false;
  bool _value2 = false;
  bool _value3 = false;
   bool isHiddenPassword = true;
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(fontFamily: "Montserrat"),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Color(0xff141414)),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            'Tambah Akun',
            style: TextStyle(
              color: Color(0xff141414),
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Nama',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      hintText: 'Masukan Nama',
                      hintStyle: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Password',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  child: TextFormField(
                      obscureText: isHiddenPassword,
                    decoration: InputDecoration(
                       suffixIcon: InkWell(
                            onTap: _togglePasswordView,
                            child: Icon(Icons.visibility),
                          ),
                      border: OutlineInputBorder(
                        
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      hintText: 'Masukan Password',
                      hintStyle: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Rules',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: _value1,
                            onChanged: (value) {
                              setState(() {
                                _value1 = value!;
                              });
                            },
                          ),
                          Text("Kasir",
                              style: TextStyle(
                                fontSize: 12,
                              )),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: _value2,
                            onChanged: (value) {
                              // setState(() {
                              //   _value2 = value!;
                              // });
                            },
                          ),
                          Text("Chef",
                              style: TextStyle(
                                fontSize: 12,
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(70, 0, 70, 0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: MaterialButton(
                            onPressed: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => ReviewPesanan()));
                            },
                            padding: EdgeInsets.symmetric(vertical: 15),
                            color: Color(0xffFFD700),
                            elevation: 0,
                            child: Text(
                              "SUBMIT",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: 16,
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
      ),
    );
  }
   void _togglePasswordView() {
    setState(() {
      isHiddenPassword = !isHiddenPassword;
    });
  }
}
