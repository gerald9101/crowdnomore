import 'package:flutter/material.dart';

class FactCheckResults extends StatefulWidget {
  @override
  _FactCheckResultsState createState() => _FactCheckResultsState();
}

class _FactCheckResultsState extends State<FactCheckResults> {
  Image bgImage;

  @override
  void initState() {
    // adjust the provider based on the image type
    bgImage = Image.asset(
      'assets/images/fact_check_results.png',
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
          appBar: AppBar(
            backgroundColor: const Color(0xffe4fde1),
            iconTheme: IconThemeData(color: const Color(0xff006672)),
            title: Text("Fact Check Results",
                style: TextStyle(color: const Color(0xff03312e))),
            actions: <Widget>[
              new IconButton(
                icon: new Icon(Icons.close),
                onPressed: () => Navigator.of(context).pop(null),
              ),
            ],
            leading: new Container(),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 240),
                  child: FlatButton(
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/home', (route) => false);
                    },
                    color: const Color(0xfff45b69),
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 60),
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
                Container(
                  padding: EdgeInsets.only(top: 20),
                  child: FlatButton(
                    onPressed: () {
                      Navigator.of(context).pop(null);
                    },
                    color: const Color(0xff456990),
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                    child: Text(
                      "Verify another",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Calibri',
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
