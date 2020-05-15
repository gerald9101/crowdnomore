import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SetupProfile1 extends StatefulWidget {
  @override
  _SetupProfile1State createState() => _SetupProfile1State();
}

class _SetupProfile1State extends State<SetupProfile1> {
  Image bgImage;
  final nricController = TextEditingController();
  final addrController = TextEditingController();
  final postalController = TextEditingController();
  final telNoController = TextEditingController();

  @override
  void initState() {
    // adjust the provider based on the image type
    bgImage = Image.asset(
      'assets/images/setup_1.png',
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
  void dispose() {
    // Clean up the controller when the widget is disposed.
    nricController.dispose();
    addrController.dispose();
    postalController.dispose();
    telNoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      bgImage,
      Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 130),
                  child: Text(
                    "FIN/NRIC/Work Permit No.:",
                    style: TextStyle(
                        fontFamily: 'Calibri',
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Container(
                  width: 300,
                  padding: EdgeInsets.only(top: 10),
                  child: TextFormField(
                    controller: nricController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xffe4fde1),
                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: const BorderSide(
                            color: const Color(0xfff5f5f5), width: 0.0),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    "Local Address:",
                    style: TextStyle(
                        fontFamily: 'Calibri',
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Container(
                  width: 300,
                  padding: EdgeInsets.only(top: 10),
                  child: TextFormField(
                    controller: addrController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xffe4fde1),
                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: const BorderSide(
                            color: const Color(0xfff5f5f5), width: 0.0),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    "Postal Code:",
                    style: TextStyle(
                        fontFamily: 'Calibri',
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Container(
                  width: 300,
                  padding: EdgeInsets.only(top: 10),
                  child: TextFormField(
                    controller: postalController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xffe4fde1),
                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: const BorderSide(
                            color: const Color(0xfff5f5f5), width: 0.0),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    "Telephone Number:",
                    style: TextStyle(
                        fontFamily: 'Calibri',
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Container(
                  width: 300,
                  padding: EdgeInsets.only(top: 10),
                  child: TextFormField(
                    controller: telNoController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xffe4fde1),
                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: const BorderSide(
                            color: const Color(0xfff5f5f5), width: 0.0),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 120),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        width: 115,
                        child: FlatButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/setupprofile2');
                            },
                            child: Row(
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    "Next",
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
                )
              ],
            ),
          ),
        ),
      ),
    ]);
  }
}
