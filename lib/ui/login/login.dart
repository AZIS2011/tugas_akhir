import 'package:flutter/material.dart';
import 'package:radja_coffe/ui/login/login_admin.dart';
import 'package:radja_coffe/ui/login/login_chef.dart';
import 'package:radja_coffe/ui/login/login_kasir.dart';
import 'package:radja_coffe/ui/pelayan/beranda_pelayan.dart';
import 'package:radja_coffe/ui/pelayan/navigation_bar.dart';

class Halaman_Login extends StatefulWidget {
  const Halaman_Login({Key? key}) : super(key: key);

  @override
  State<Halaman_Login> createState() => _Halaman_LoginState();
}

class _Halaman_LoginState extends State<Halaman_Login> {
  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    return Theme(
      data: ThemeData(fontFamily: "Montserrat"),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: mediaQueryHeight / 6),
                Image.asset(
                  "assets/images/radja_coffe.png",
                  // width: MediaQuery.of(context).size.width / 2,
                  // height: MediaQuery.of(context).size.height / 3,
                ),
                Center(
                  child: Column(
                    children: [
                      SizedBox(height: mediaQueryHeight / 20),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.fromLTRB(60, 0, 60, 0),
                              child: MaterialButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => NavBarPage()));
                                },
                                padding: EdgeInsets.symmetric(vertical: 15),
                                color: Color(0xffFFD700),
                                elevation: 0,
                                child: Text(
                                  "LOGIN SEBAGAI PELAYAN",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xff000000),
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: mediaQueryHeight / 30),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.fromLTRB(60, 0, 60, 0),
                              child: MaterialButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Login_Chef()));
                                },
                                padding: EdgeInsets.symmetric(vertical: 15),
                                color: Color(0xffFFD700),
                                elevation: 0,
                                child: Text(
                                  "LOGIN SEBAGAI CHEF",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xff000000),
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: mediaQueryHeight / 30),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.fromLTRB(60, 0, 60, 0),
                              child: MaterialButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => LoginKasir()));
                                },
                                padding: EdgeInsets.symmetric(vertical: 15),
                                color: Color(0xffFFD700),
                                elevation: 0,
                                child: Text(
                                  "LOGIN SEBAGAI KASIR",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xff000000),
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: mediaQueryHeight / 30),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.fromLTRB(60, 0, 60, 0),
                              child: MaterialButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Login_Admin()));
                                },
                                padding: EdgeInsets.symmetric(vertical: 15),
                                color: Color(0xffFFD700),
                                elevation: 0,
                                child: Text(
                                  "LOGIN SEBAGAI ADMIN",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xff000000),
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _triangle extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width, size.height);
    path.lineTo(size.height, -0);
    path.lineTo(size.width, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
}
