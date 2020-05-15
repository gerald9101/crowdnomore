import 'package:flutter/material.dart';

class CfmCheckIn extends StatefulWidget {
  @override
  _CfmCheckInState createState() => _CfmCheckInState();
}

class _CfmCheckInState extends State<CfmCheckIn> {
  Image bgImage;

  @override
  void initState() {
    // adjust the provider based on the image type
    bgImage = Image.asset(
      'assets/images/cfm_check_in.png',
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
    return Stack(children: <Widget>[
      bgImage,
      Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  onPressed: () {
                    Navigator.pushNamed(context, "/checkincomplete");
                  },
                  color: const Color(0xff03312e),
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 40),
                  child: Text(
                    "CONFIRM\nCHECK IN NOW?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Calibri',
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    ]);
  }
}
