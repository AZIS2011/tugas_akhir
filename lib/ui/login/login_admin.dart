import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:radja_coffe/services/auth_services.dart';
import 'package:radja_coffe/ui/admin/beranda_admin.dart';
import 'package:http/http.dart' as http;

import '../../Screens/rounded_button.dart';
import '../../services/globals.dart';

class Login_Admin extends StatefulWidget {
  const Login_Admin({Key? key}) : super(key: key);

  @override
  State<Login_Admin> createState() => _Login_AdminState();
}

class _Login_AdminState extends State<Login_Admin> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController email = new TextEditingController();
  final TextEditingController password = new TextEditingController();
  bool isHiddenPassword = true;

  String _email = '';
  String _password = '';

  loginPressed() async {
    if (_email.isNotEmpty && _password.isNotEmpty) {
      http.Response response = await AuthServices.login(_email, _password);
      Map responseMap = jsonDecode(response.body);
      if (response.statusCode == 200) {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => const Beranda_Admin(),
            ));
      } else {
        errorSnackBar(context, responseMap.values.first);
      }
    } else {
      errorSnackBar(context, 'enter all required fields');
    }
  }

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    return Theme(
      data: ThemeData(fontFamily: "Montserrat"),
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Image.asset('assets/images/radja_coffe.png'),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Container(
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                            fontSize: 30,
                            color: Color(0xff000000),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      child: TextFormField(
                        onChanged: (value) {
                          _email = value;
                        },
                        autofocus: false,
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0)),
                          ),
                          labelText: "Email",
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          prefixIcon: Icon(Icons.email),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      child: TextFormField(
                        onChanged: (value) {
                          _password = value;
                        },
                        autofocus: false,
                        controller: password,
                        obscureText: isHiddenPassword,
                        keyboardType: TextInputType.text,
                      
                        textInputAction: TextInputAction.done,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0)),
                          ),
                          suffixIcon: InkWell(
                            onTap: _togglePasswordView,
                            child: Icon(Icons.visibility),
                          ),
                          labelText: "Password",
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          prefixIcon: Icon(Icons.lock),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                     RoundedButton(
                btnText: 'LOG IN',
                onBtnPressed: () => loginPressed(),
              )
                    // Row(
                    //   children: [
                    //     Expanded(
                    //       child: Container(
                    //         margin: EdgeInsets.fromLTRB(90, 0, 90, 0),
                    //         child: MaterialButton(
                    //           onPressed: () {
                    //             Navigator.push(
                    //                 context,
                    //                 MaterialPageRoute(
                    //                     builder: (context) => Beranda_Admin()));
                    //           },
                    //           padding: EdgeInsets.symmetric(vertical: 15),
                    //           color: Color(0xffFFD700),
                    //           elevation: 0,
                    //           child: Text(
                    //             "MASUK",
                    //             textAlign: TextAlign.center,
                    //             style: TextStyle(
                    //               color: Color(0xff000000),
                    //               fontSize: 14,
                    //               fontWeight: FontWeight.bold,
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
