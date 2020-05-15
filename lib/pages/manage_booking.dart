import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';

class ManageBooking extends StatefulWidget {
  @override
  _ManageBookingState createState() => _ManageBookingState();
}

class _ManageBookingState extends State<ManageBooking>
    with SingleTickerProviderStateMixin {
  final List<Tab> tabs = <Tab>[
    new Tab(text: "Current Booking"),
    new Tab(text: "Booking History")
  ];

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: tabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
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
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 20, bottom: 20),
            child: Text('Manage Bookings',
                style: TextStyle(
                  color: const Color(0xff03312e),
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                )),
          ),
          Container(
            child: TabBar(
              isScrollable: true,
              unselectedLabelColor: const Color(0xff03312e),
              labelColor: Colors.white,
              labelStyle: TextStyle(
                  fontFamily: 'Calibri',
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w700),
              indicatorSize: TabBarIndicatorSize.tab,
              indicator: new BubbleTabIndicator(
                indicatorHeight: 40,
                indicatorColor: const Color(0xff03312e),
                tabBarIndicatorSize: TabBarIndicatorSize.tab,
              ),
              tabs: tabs,
              controller: _tabController,
            ),
          ),
          Container(
            height: 487,
            child: TabBarView(
              controller: _tabController,
              children: <Widget>[
                Center(
                  child: Container(
                      child: Column(
                    children: <Widget>[
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            width: 2, color: Colors.black))),
                                child: FlatButton(
                                  padding: EdgeInsets.symmetric(horizontal: 50),
                                  onPressed: () {},
                                  child: Text("Today",
                                      style: TextStyle(
                                        fontFamily: 'Calibri',
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                      )),
                                )),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          width: 2, color: Colors.grey))),
                              child: FlatButton(
                                padding: EdgeInsets.symmetric(horizontal: 50),
                                onPressed: () {},
                                child: Text("Upcoming",
                                    style: TextStyle(
                                      fontFamily: 'Calibri',
                                      color: Colors.grey,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                    )),
                              ),
                            ),
                          ]),
                      Container(
                        padding: EdgeInsets.only(top: 10),
                        child: Image(
                          image:
                              AssetImage('assets/images/current_booking.png'),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                              child: FlatButton(
                            color: const Color(0xff456990),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            padding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 10),
                            onPressed: () {},
                            child: Text("30 mins till\nCheck in",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Calibri',
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                )),
                          )),
                          Container(
                              child: FlatButton(
                            color: const Color(0xff03312e),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            padding: EdgeInsets.symmetric(
                                horizontal: 40, vertical: 10),
                            onPressed: () {},
                            child: Text("Cancel\nbooking",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Calibri',
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                )),
                          )),
                        ],
                      )
                    ],
                  )),
                ),
                Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text("25 bookings made",
                          style: TextStyle(
                            fontFamily: 'Calibri',
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          )),
                    ),
                    Container(
                      color: Colors.blueGrey,
                      child: Image(
                        image: AssetImage('assets/images/booking_history.png'),
                      ),
                    ),
                  ],
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
