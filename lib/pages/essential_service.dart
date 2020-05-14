import 'package:flutter/material.dart';

class EssentialService extends StatefulWidget {
  @override
  _EssentialServiceState createState() => _EssentialServiceState();
}

class _EssentialServiceState extends State<EssentialService> {
  Image bgImage;
  final searchController = TextEditingController();
  String cat;
  String mapImage = 'assets/images/map1_icon.png';
  bool disabled = true;

  @override
  void initState() {
    // adjust the provider based on the image type
    bgImage = Image.asset(
      'assets/images/essential_service.png',
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
    searchController.dispose();
    super.dispose();
  }

  void _mapChange() {
    setState(() {
      if (mapImage == 'assets/images/map1_icon.png') {
        mapImage = 'assets/images/map2_icon.png';
        disabled = false;
      } else {
        mapImage = 'assets/images/map1_icon.png';
        disabled = true;
      }
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
                padding: EdgeInsets.only(top: 70, bottom: 10),
                width: 300,
                child: TextFormField(
                  controller: searchController,
                  decoration: InputDecoration(
                    hintText: "Search...",
                    suffixIcon: Icon(Icons.search),
                    filled: true,
                    fillColor: const Color(0xffe4fde1),
                    enabledBorder: InputBorder.none,
                  ),
                ),
              ),
              Container(
                color: const Color(0xffe4fde1),
                padding: EdgeInsets.only(top: 10),
                width: 300,
                child: DropdownButton<String>(
                  hint: Text("     Category..."),
                  value: cat,
                  items: <String>[
                    'Wet Market',
                    'Supermarket',
                    'Clinics',
                    'Coffee Shop'
                  ].map((String value) {
                    return new DropdownMenuItem<String>(
                      value: value,
                      child: new Text(value),
                    );
                  }).toList(),
                  onChanged: (String newCat) {
                    setState(() {
                      cat = newCat;
                    });
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 17, vertical: 15),
                    child: FlatButton(
                      onPressed: () {},
                      color: const Color(0xff03312e),
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                      child: Text(
                        "Near me",
                        style: TextStyle(
                            fontFamily: 'Calibri',
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 17, vertical: 15),
                    child: FlatButton(
                      onPressed: () {},
                      color: const Color(0xff03312e),
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                      child: Text(
                        "Booking",
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
              Container(
                  child: FlatButton(
                onPressed: () {
                  _mapChange();
                  print("Clicked.");
                },
                child: Image(
                  image: AssetImage(mapImage),
                  height: 200,
                  fit: BoxFit.fitHeight,
                ),
              )),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 17, vertical: 15),
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  onPressed: () {},
                  color: disabled
                      ? const Color(0xffffd4d9)
                      : const Color(0xfff45b69),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 60),
                  child: Text(
                    "Book now",
                    style: TextStyle(
                        fontFamily: 'Calibri',
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              Container(
                child: Text(
                  "You have not selected anything.",
                  style: disabled
                      ? TextStyle(
                          fontFamily: 'Calibri',
                          color: const Color(0xfff45b69),
                          fontSize: 20,
                          fontWeight: FontWeight.w700)
                      : TextStyle(
                          fontFamily: 'Calibri',
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                ),
              )
            ],
          ),
        ),
      ),
    ]);
  }
}
