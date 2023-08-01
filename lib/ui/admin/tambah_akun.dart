import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;
import 'package:radja_coffe/Screens/login_screen.dart';
import 'package:radja_coffe/ui/login/login_admin.dart';

import '../../Screens/rounded_button.dart';
import '../../services/auth_services.dart';
import '../../services/globals.dart';
import '../login/login.dart';

class Tambah_Akun extends StatefulWidget {
  const Tambah_Akun({Key? key}) : super(key: key);

  @override
  State<Tambah_Akun> createState() => _Tambah_AkunState();
}

class _Tambah_AkunState extends State<Tambah_Akun> {
  String _email = '';
  String _password = '';
  String _name = '';
  int _value = 1;
  createAccountPressed() async {
    bool emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(_email);
    if (emailValid) {
      http.Response response =
          await AuthServices.register(_name, _email, _password);
      Map responseMap = jsonDecode(response.body);
      if (response.statusCode == 200) {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => const Tambah_Akun(),
            ));
      } else {
        errorSnackBar(context, responseMap.values.first[0]);
      }
    } else {
      errorSnackBar(context, 'email not valid');
    }
  }

  // bool _value1 = false;
  // bool _value2 = false;
  // bool _value3 = false;
  bool isHiddenPassword = true;
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(fontFamily: "Montserrat"),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xffFFD700),
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
                    onChanged: (value) {
                      _name = value;
                    },
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
                    onChanged: (value) {
                      _password = value;
                    },
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
                  'Email',
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
                    onChanged: (value) {
                      _email = value;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      hintText: 'Masukan Email',
                      hintStyle: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                // Container(
                //   child: Column(
                //     children: [
                //       Row(
                //         children: [
                //           Checkbox(
                //             value: _value1,
                //             onChanged: (value) {
                //               setState(() {
                //                 _value1 = value!;
                //               });
                //             },
                //           ),
                //           Text("Kasir",
                //               style: TextStyle(
                //                 fontSize: 12,
                //               )),
                //         ],
                //       ),
                //       Row(
                //         children: [
                //           Checkbox(
                //             value: _value2,
                //             onChanged: (value) {
                //               // setState(() {
                //               //   _value2 = value!;
                //               // });
                //             },
                //           ),
                //           Text("Chef",
                //               style: TextStyle(
                //                 fontSize: 12,
                //               )),
                //         ],
                //       ),
                //     ],
                //   ),
                // ),
                SizedBox(
                  height: 40,
                ),
                RoundedButton(
                  btnText: 'Create Account',
                  onBtnPressed: () => createAccountPressed(),
                ),
                const SizedBox(
                  height: 40,
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const Halaman_Login(),
                          ));
                    },
                    child: const Text(
                      'already have an account',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                )
                // Row(
                //   children: [
                //     Expanded(
                //       child: Container(
                //         margin: EdgeInsets.fromLTRB(70, 0, 70, 0),
                //         child: ClipRRect(
                //           borderRadius: BorderRadius.circular(15),
                //           child: MaterialButton(
                //             onPressed: () {
                //               // Navigator.push(
                //               //     context,
                //               //     MaterialPageRoute(
                //               //         builder: (context) => createAccountPressed()));
                //             },
                //             padding: EdgeInsets.symmetric(vertical: 15),
                //             color: Color(0xffFFD700),
                //             elevation: 0,
                //             child: Text(
                //               "SUBMIT",
                //               textAlign: TextAlign.center,
                //               style: TextStyle(
                //                 color: Color(0xffFFFFFF),
                //                 fontSize: 16,
                //                 fontWeight: FontWeight.bold,
                //               ),
                //             ),
                //           ),
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
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
