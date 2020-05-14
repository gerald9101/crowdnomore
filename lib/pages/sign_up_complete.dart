import 'package:flutter/material.dart';

class SignUpComplete extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image(
            image: AssetImage('assets/images/sign_up_complete.png'),
            width: 300,
            height: 300,
          ),
          FlatButton(
            padding: EdgeInsets.symmetric(horizontal: 45, vertical: 10),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/startscreen', (route) => false);
            },
            color: const Color(0xfff45b69),
            child: Text(
              "Go to log in now",
              style: TextStyle(
                  fontFamily: 'Calibri',
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w700),
            ),
          )
        ],
      )),
    );
  }
}
