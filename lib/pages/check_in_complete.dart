import 'package:flutter/material.dart';

class CheckInComplete extends StatefulWidget {
  @override
  _CheckInCompleteState createState() => _CheckInCompleteState();
}

class _CheckInCompleteState extends State<CheckInComplete> {
  Image bgImage;

  @override
  void initState() {
    // adjust the provider based on the image type
    bgImage = Image.asset(
      'assets/images/check_in_complete.png',
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
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        bgImage,
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Container(
              padding: EdgeInsets.only(top: 60),
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, "/home", (route) => false);
                },
                color: const Color(0xfff45b69),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                child: Text(
                  "Go to home",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Calibri',
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
