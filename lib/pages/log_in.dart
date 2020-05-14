import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  Image bgImage;
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void initState() {
    // adjust the provider based on the image type
    bgImage = Image.asset(
      'assets/images/log_in.png',
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
    usernameController.dispose();
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
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top: 200),
                    child: Text(
                      "Username",
                      style: TextStyle(
                          fontFamily: 'Calibri',
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Container(
                    width: 300,
                    padding: EdgeInsets.only(top: 10),
                    child: TextFormField(
                      controller: usernameController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(0xffe4fde1),
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: const BorderSide(
                              color: const Color(0xfff5f5f5), width: 0.0),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 50),
                    child: Text(
                      "Password",
                      style: TextStyle(
                          fontFamily: 'Calibri',
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Container(
                    width: 300,
                    padding: EdgeInsets.only(top: 10),
                    child: TextFormField(
                      controller: passwordController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(0xffe4fde1),
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: const BorderSide(
                              color: const Color(0xfff5f5f5), width: 0.0),
                        ),
                      ),
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.fromLTRB(20, 50, 0, 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          FlatButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            onPressed: () {
                              Navigator.pushNamedAndRemoveUntil(
                                  context, '/home', (route) => false);
                            },
                            color: const Color(0xfff45b69),
                            padding: EdgeInsets.symmetric(
                                vertical: 13, horizontal: 100),
                            child: Text(
                              "Log in",
                              style: TextStyle(
                                  fontFamily: 'Calibri',
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 20),
                            child: Text(
                              "Forgot Username/Password?",
                              style: TextStyle(
                                  fontFamily: 'Calibri',
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  decoration: TextDecoration.underline,
                                  decorationColor: Colors.black,
                                  decorationThickness: 2),
                            ),
                          )
                        ],
                      )),
                ],
              )),
            ))
      ],
    );
  }
}
