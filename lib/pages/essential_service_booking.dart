import 'package:flutter/material.dart';

class EssentialServiceBooking extends StatefulWidget {
  @override
  _EssentialServiceBookingState createState() =>
      _EssentialServiceBookingState();
}

class _EssentialServiceBookingState extends State<EssentialServiceBooking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 30),
            child: Text(
              "Confirm Bookings",
              style: TextStyle(
                  fontFamily: 'Calibri',
                  color: const Color(0xff03312e),
                  fontSize: 30,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Container(
            width: 350,
            child: Image(
              image: AssetImage('assets/images/essential_service_booking.png'),
              fit: BoxFit.fill,
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20),
            child: FlatButton(
              padding: EdgeInsets.symmetric(horizontal: 45, vertical: 10),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/home', (route) => false);
              },
              color: const Color(0xfff45b69),
              child: Text(
                "Confirm Booking",
                style: TextStyle(
                    fontFamily: 'Calibri',
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
