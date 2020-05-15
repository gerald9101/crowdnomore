import 'package:flutter/material.dart';

class SetupProfile2 extends StatefulWidget {
  @override
  _SetupProfile2State createState() => _SetupProfile2State();
}

class _SetupProfile2State extends State<SetupProfile2> {
  Image bgImage;

  @override
  void initState() {
    // adjust the provider based on the image type
    bgImage = Image.asset(
      'assets/images/setup_2.png',
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
        body: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(bottom: 35),
                  width: 225,
                  child: FlatButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/setupprofile3');
                      },
                      child: Row(
                        children: <Widget>[
                          Container(
                            child: Text(
                              "Acknowledge",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'Calibri',
                                  color: Colors.black,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Container(
                            child: Icon(
                              Icons.arrow_forward,
                            ),
                          ),
                        ],
                      )),
                ),
              ],
            ),
          ],
        )),
      ),
    ]);
  }
}
