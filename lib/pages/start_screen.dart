import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    precacheImage(AssetImage('assets/images/start_screen.png'), context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            Image(
              image: AssetImage('assets/images/start_screen.png'),
              width: 500,
              fit: BoxFit.fill,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top: 350),
                    child: FlatButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/createaccount');
                      },
                      color: const Color(0xff114b5f),
                      padding:
                          EdgeInsets.symmetric(vertical: 13, horizontal: 60),
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                            fontFamily: 'Calibri',
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: FlatButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      color: const Color(0xfff45b69),
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 66),
                      child: Text(
                        "Log In",
                        style: TextStyle(
                            fontFamily: 'Calibri',
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                          fontFamily: 'Calibri',
                          fontWeight: FontWeight.w700,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.black,
                          decorationThickness: 2),
                    ),
                  )
                ],
              ),
            )
          ],
        ), //   <-- image
      ),
    );
  }
}
