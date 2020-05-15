import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List todayBooking = [
    ['Lot 1 shopper\'s Mall NTUC', '2.30-3.30PM']
  ];
  Image bgImage;
  bool today = true;
  bool checkIn = false;
  bool checkOut = false;
  String buttonText = "1 hour till \n check in";

  @override
  void initState() {
    // adjust the provider based on the image type
    bgImage = Image.asset(
      'assets/images/home_screen.png',
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

  void _stateChange() {
    setState(() {
      today = !today;
    });
  }

  void _checkInOutState() {
    setState(() {});
  }

  Widget _todayList(BuildContext context) {
    return ListView();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      bgImage,
      Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.only(top: 113),
                      child: FlatButton(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        onPressed: () {
                          Navigator.pushNamed(context, "/essentialservice");
                        },
                        child: Image(
                          image: AssetImage(
                              'assets/images/essential_service_icon.png'),
                          height: 150,
                          fit: BoxFit.fitHeight,
                        ),
                      )),
                  Container(
                      padding: EdgeInsets.only(top: 104),
                      child: FlatButton(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        onPressed: () {
                          Navigator.pushNamed(context, "/qrscan");
                        },
                        child: Image(
                          image: AssetImage('assets/images/scan_qr_icon.png'),
                          height: 150,
                          fit: BoxFit.fitHeight,
                        ),
                      )),
                  Container(
                      padding: EdgeInsets.only(top: 108),
                      child: FlatButton(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        onPressed: () {
                          print("Clicked.");
                        },
                        child: Image(
                          image:
                              AssetImage('assets/images/fact_check_icon.png'),
                          height: 150,
                          fit: BoxFit.fitHeight,
                        ),
                      )),
                ],
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        padding: EdgeInsets.only(top: 70),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: today
                                    ? BorderSide(width: 2, color: Colors.black)
                                    : BorderSide(
                                        width: 2, color: Colors.grey))),
                        child: FlatButton(
                          padding: EdgeInsets.symmetric(horizontal: 65),
                          onPressed: () {
                            today ? null : _stateChange();
                            print(today);
                          },
                          child: Text("Today",
                              style: today
                                  ? TextStyle(
                                      fontFamily: 'Calibri',
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                    )
                                  : TextStyle(
                                      fontFamily: 'Calibri',
                                      color: Colors.grey,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                    )),
                        )),
                    Container(
                      padding: EdgeInsets.only(top: 70),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: today
                                  ? BorderSide(width: 2, color: Colors.grey)
                                  : BorderSide(width: 2, color: Colors.black))),
                      child: FlatButton(
                        padding: EdgeInsets.symmetric(horizontal: 65),
                        onPressed: () {
                          today ? _stateChange() : null;
                          print(today);
                        },
                        child: Text("Future",
                            style: today
                                ? TextStyle(
                                    fontFamily: 'Calibri',
                                    color: Colors.grey,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                  )
                                : TextStyle(
                                    fontFamily: 'Calibri',
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                  )),
                      ),
                    ),
                  ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 60),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(23, 10, 0, 0),
                          child: Text(
                              todayBooking[0][0] +
                                  "\nBooking time:" +
                                  todayBooking[0][1] +
                                  "\n",
                              style: TextStyle(
                                fontFamily: 'Calibri',
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              )),
                        ),
                        Container(
                            child: Image(
                          image:
                              AssetImage("assets/images/crowd_level_icon.png"),
                          width: 150,
                        ))
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 6),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(bottom: 5),
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            onPressed: () {},
                            color: const Color(0xfff45b69),
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 30),
                            child: Text(
                              "Manage",
                              style: TextStyle(
                                  fontFamily: 'Calibri',
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                        Container(
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            onPressed: () {
                              _checkInOutState();
                              print(checkIn);
                              print(checkOut);
                            },
                            color: const Color(0xffa2b4c7),
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 30),
                            child: Text(
                              "$buttonText",
                              style: TextStyle(
                                  fontFamily: 'Calibri',
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        padding: EdgeInsets.only(top: 30),
                        child: FlatButton(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          onPressed: () {
                            print("Clicked.");
                          },
                          child: Image(
                            image:
                                AssetImage('assets/images/snh_check_icon.png'),
                            height: 150,
                            fit: BoxFit.fitHeight,
                          ),
                        )),
                    Container(
                        padding: EdgeInsets.only(top: 30),
                        child: FlatButton(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          onPressed: () {
                            print("Clicked.");
                          },
                          child: Image(
                            image: AssetImage(
                                'assets/images/org_check_in_icon.png'),
                            height: 150,
                            fit: BoxFit.fitHeight,
                          ),
                        )),
                  ]),
            ],
          ),
        ),
      )
    ]);
  }
}
