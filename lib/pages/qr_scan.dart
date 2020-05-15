import 'package:flutter/material.dart';

class QRScan extends StatefulWidget {
  @override
  _QRScanState createState() => _QRScanState();
}

class _QRScanState extends State<QRScan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: const Color(0xffe4fde1),
          iconTheme: IconThemeData(color: const Color(0xff006672)),
          title: Text("Back", style: TextStyle(color: const Color(0xff03312e))),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Image.asset('assets/images/appbar_icon.png'),
              iconSize: 80,
            ),
          ],
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 10, bottom: 5),
                child: Text("Click to scan QR",
                    style: TextStyle(
                      color: const Color(0xffe4fde1),
                      fontFamily: 'Calibri',
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    )),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 10),
                child: FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/qrscancheckin");
                  },
                  child: Image(
                    image: AssetImage(
                      'assets/images/fake_qr.png',
                    ),
                    height: 490,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              Container(
                width: 50,
                height: 50,
                decoration: new BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              )
            ],
          ),
        ));
  }
}
