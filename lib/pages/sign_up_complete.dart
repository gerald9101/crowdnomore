import 'package:flutter/material.dart';

class SignUpComplete extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 70),
            child: Image(
              image: AssetImage('assets/images/sign_up_complete.png'),
              width: 300,
              height: 300,
            ),
          ),
          Container(
            child: Text(
              "Sign up complete!",
              style: TextStyle(
                  fontFamily: 'Calibri',
                  color: const Color(0xfff45b69),
                  fontSize: 30,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 30),
            child: FlatButton(
              padding: EdgeInsets.symmetric(horizontal: 45, vertical: 10),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              onPressed: () {
                Navigator.pushNamed(context, '/setupprofile1');
              },
              color: const Color(0xfff45b69),
              child: Text(
                "Set up profile",
                style: TextStyle(
                    fontFamily: 'Calibri',
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
