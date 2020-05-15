import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FactCheck extends StatefulWidget {
  @override
  _FactCheckState createState() => _FactCheckState();
}

class _FactCheckState extends State<FactCheck> {
  Image bgImage;
  bool isEmpty = true;

  @override
  void initState() {
    // adjust the provider based on the image type
    bgImage = Image.asset(
      'assets/images/fact_check.png',
      width: 500,
      fit: BoxFit.fill,
    );
    isEmpty = true;
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    precacheImage(bgImage.image, context);
    isEmpty = true;
  }

  void _upload() {
    setState(() {
      isEmpty = !isEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      bgImage,
      Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: const Color(0xffe4fde1),
            iconTheme: IconThemeData(color: const Color(0xff006672)),
            title:
                Text("Back", style: TextStyle(color: const Color(0xff03312e))),
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
                    padding: EdgeInsets.only(top: 150),
                    child: FlatButton(
                      padding:
                          EdgeInsets.symmetric(horizontal: 70, vertical: 20),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      onPressed: () {
                        _upload();
                        print("Clicked");
                      },
                      color: const Color(0xffe4fde1),
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Image(
                              image: AssetImage('assets/images/paste_news.png'),
                              height: 150,
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                          Container(
                            child: Text(
                              isEmpty
                                  ? "Paste news/text here..."
                                  : "You have uploaded a\nvoice recording",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'Calibri',
                                  color: const Color(0xff03312e),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                    )),
                Container(
                  padding: EdgeInsets.only(top: 20),
                  child: FlatButton(
                    onPressed: () {
                      isEmpty
                          ? null
                          : Navigator.pushNamed(context, '/factcheckresults');
                    },
                    color: isEmpty
                        ? const Color(0xff03312e)
                        : const Color(0xfff45b69),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                    child: Text(
                      isEmpty
                          ? "Upload photo/video/\nvoice recording"
                          : "Verify news now",
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
          ))
    ]);
  }
}
