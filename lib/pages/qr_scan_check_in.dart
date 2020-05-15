import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QRScanCheckIn extends StatefulWidget {
  @override
  _QRScanCheckInState createState() => _QRScanCheckInState();
}

class _QRScanCheckInState extends State<QRScanCheckIn> {
  Image bgImage;

  @override
  void initState() {
    // adjust the provider based on the image type
    bgImage = Image.asset(
      'assets/images/qr_scan_check_in.png',
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
              padding: EdgeInsets.only(top: 90),
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                onPressed: () {
                  Navigator.pushNamed(context, "/checkincomplete");
                },
                color: const Color(0xfff45b69),
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                child: Text(
                  "CONFIRM \nCHECK IN NOW?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Calibri',
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
