import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CreateAccount extends StatefulWidget {
  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final fullNameController = TextEditingController();
  final usernameController = TextEditingController();
  final emailaddrController = TextEditingController();
  final passwordController = TextEditingController();

  Image bgImage;
  bool checked = false;

  @override
  void initState() {
    // adjust the provider based on the image type
    bgImage = Image.asset(
      'assets/images/create_account.png',
      width: 500,
      fit: BoxFit.fill,
    );
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    precacheImage(bgImage.image, context);
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    fullNameController.dispose();
    usernameController.dispose();
    emailaddrController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        bgImage,
        Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              padding: EdgeInsets.only(top: 140),
              child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.fromLTRB(25, 150, 0, 0),
                            child: Text(
                              "Full Name",
                              style: TextStyle(
                                  fontFamily: 'Calibri',
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(100, 150, 0, 0),
                            child: Text(
                              "Username",
                              style: TextStyle(
                                  fontFamily: 'Calibri',
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700),
                            ),
                          )
                        ],
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 25),
                              width: 190,
                              child: TextFormField(
                                controller: fullNameController,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: const Color(0xfff5f5f5),
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 10),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                    borderSide: const BorderSide(
                                        color: const Color(0xfff5f5f5),
                                        width: 0.0),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20),
                              width: 190,
                              child: TextFormField(
                                controller: usernameController,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: const Color(0xfff5f5f5),
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 10),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                    borderSide: const BorderSide(
                                        color: const Color(0xfff5f5f5),
                                        width: 0.0),
                                  ),
                                ),
                              ),
                            )
                          ]),
                      Container(
                        padding: EdgeInsets.fromLTRB(25, 20, 0, 0),
                        child: Text(
                          "Email Address",
                          style: TextStyle(
                              fontFamily: 'Calibri',
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 25),
                        width: 381,
                        child: TextFormField(
                          controller: emailaddrController,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color(0xfff5f5f5),
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 10),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: const BorderSide(
                                  color: const Color(0xfff5f5f5), width: 0.0),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(25, 20, 0, 0),
                        child: Text(
                          "Password",
                          style: TextStyle(
                              fontFamily: 'Calibri',
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 25),
                        width: 381,
                        child: TextFormField(
                          controller: passwordController,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color(0xfff5f5f5),
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 10),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: const BorderSide(
                                  color: const Color(0xfff5f5f5), width: 0.0),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(left: 10),
                            child: Checkbox(
                              value: checked,
                              onChanged: (bool value) {
                                setState(() {
                                  checked = value;
                                });
                              },
                              activeColor: Colors.blueAccent,
                            ),
                          ),
                          Container(
                            child: RichText(
                              text: TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                      text:
                                          'Creating an account means that you are okay with our ',
                                      style: TextStyle(
                                          fontFamily: 'Calibri',
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400)),
                                  TextSpan(
                                      text: 'Terms of \nService, ',
                                      style: TextStyle(
                                          fontFamily: 'Calibri',
                                          color: Colors.blueAccent,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          print('Terms of Service,');
                                        }),
                                  TextSpan(
                                      text: 'Privacy Policy, ',
                                      style: TextStyle(
                                          fontFamily: 'Calibri',
                                          color: Colors.blueAccent,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          print('Privacy Policy,');
                                        }),
                                  TextSpan(
                                      text: 'and our default ',
                                      style: TextStyle(
                                          fontFamily: 'Calibri',
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400)),
                                  TextSpan(
                                      text: 'Notification Settings.',
                                      style: TextStyle(
                                          fontFamily: 'Calibri',
                                          color: Colors.blueAccent,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          print('Notification Settings.');
                                        }),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.fromLTRB(25, 10, 5, 0),
                            child: FlatButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              onPressed: () {
                                Navigator.pushNamed(context, '/signupcomplete');
                              },
                              color: const Color(0xfff45b69),
                              padding: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 30),
                              child: Text(
                                "Create Account",
                                style: TextStyle(
                                    fontFamily: 'Calibri',
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 10),
                            child: RichText(
                              text: TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'Already a member? ',
                                      style: TextStyle(
                                          fontFamily: 'Calibri',
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400)),
                                  TextSpan(
                                      text: 'Sign in',
                                      style: TextStyle(
                                          fontFamily: 'Calibri',
                                          color: const Color(0xfff45b69),
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          print('Sign in');
                                        }),
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    ]),
              ),
            )),
      ],
    );
  }
}
