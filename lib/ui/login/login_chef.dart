import 'package:flutter/material.dart';
import 'package:radja_coffe/ui/chef/beranda_chef.dart';

class Login_Chef extends StatefulWidget {
  const Login_Chef({Key? key}) : super(key: key);

  @override
  State<Login_Chef> createState() => _Login_ChefState();
}

class _Login_ChefState extends State<Login_Chef> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController email = new TextEditingController();
  final TextEditingController password = new TextEditingController();
  bool isHiddenPassword = true;
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
                        autofocus: false,
                        controller: email,
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return ("Please Enter Your Email");
                          }

                          //req expression for email  validation
                          if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                              .hasMatch(value)) {
                            return ("Please Enter a valid email");
                          }
                          return null;
                        },
                        onSaved: (value) {
                          email.text = value!;
                        },
                        textInputAction: TextInputAction.next,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0)),
                          ),
                          labelText: "Username",
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          prefixIcon: Icon(Icons.person),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      child: TextFormField(
                        autofocus: false,
                        controller: password,
                        obscureText: isHiddenPassword,
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          RegExp regex = new RegExp(r'^.{6,}$'); //b
                          if (value!.isEmpty) {
                            return ("Password is required for login");
                          }
                          if (!regex.hasMatch(value)) {
                            return ("Enter Valid Password (Min.6Character)");
                          }
                        },
                        onSaved: (value) {
                          password.text = value!;
                        },
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
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(90, 0, 90, 0),
                            child: MaterialButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Beranda_Chef()));
                              },
                              padding: EdgeInsets.symmetric(vertical: 15),
                              color: Color(0xffFFD700),
                              elevation: 0,
                              child: Text(
                                "MASUK",
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
