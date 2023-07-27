import 'dart:async';

import 'package:flutter/material.dart';
import 'package:radja_coffe/test.dart';
import 'package:radja_coffe/ui/kasir/beranda_kasir.dart';
import 'package:radja_coffe/ui/login/login.dart';
import 'package:radja_coffe/ui/pelayan/beranda_pelayan.dart';
import 'package:radja_coffe/ui/pelayan/dashboard.dart';
import 'package:radja_coffe/ui/pelayan/navigation_bar.dart';

import 'ui/chef/beranda_chef.dart';
import 'ui/kasir/pembayaran.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavBarPage(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  startSplashScreen() async {
    var duration = Duration(seconds: 4);
    return Timer(duration, () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Halaman_Login()));
    });
  }

  @override
  void initState() {
    super.initState();
    startSplashScreen();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    animationController!.addListener(() {
      setState(() {});
    });
    animationController!.repeat();
  }

  AnimationController? animationController;

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    return Material(
      child: Container(
        padding: EdgeInsets.only(
          top: 100,
          bottom: 40,
        ),
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
              image: AssetImage("assets/images/bg.jpg"),
              fit: BoxFit.cover,
              opacity: 0.6),
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Image.asset(
                "assets/images/radja_coffe.png",
                width: mediaQueryWidth * 0.7,
                height: mediaQueryHeight * 0.7,
              ),
            ),
          ],
        ),
      ),
    );
    // return Scaffold(
    //   body: Stack(
    //     children: [
    //       // Column(
    //       //   children: [
    //       //     Center(
    //       //       child: ClipPath(
    //       //         child: Container(
    //       //           color: Colors.yellow,
    //       //           width: 200,
    //       //           height: 200,
    //       //         ),
    //       //         clipper: _triangle(),
    //       //       ),
    //       //     ),
    //       //   ],
    //       // ),
    //       Column(
    //         crossAxisAlignment: CrossAxisAlignment.center,
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           Center(
    //             child: Column(
    //               children: [
    //                 Container(
    //                   child: Image.asset(
    //                     "assets/images/radja_coffe.png",
    //                     width: mediaQueryWidth * 0.6,
    //                     height: mediaQueryHeight * 0.6,
    //                   ),
    //                 ),
    //                 Container(),
    //               ],
    //             ),
    //           ),
    //         ],
    //       ),
    //     ],
    //   ),
    // );
  }
}

class _triangle extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width, 0);
    path.lineTo(size.height, size.height);
    path.lineTo(size.width / 2, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
}
