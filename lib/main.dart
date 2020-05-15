import 'package:crowdnomore/pages/check_in_complete.dart';
import 'package:crowdnomore/pages/create_account.dart';
import 'package:crowdnomore/pages/essential_service.dart';
import 'package:crowdnomore/pages/home_screen.dart';
import 'package:crowdnomore/pages/log_in.dart';
import 'package:crowdnomore/pages/qr_scan.dart';
import 'package:crowdnomore/pages/qr_scan_check_in.dart';
import 'package:crowdnomore/pages/sign_up_complete.dart';
import 'package:crowdnomore/pages/start_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  initialRoute: '/startscreen',
  routes: {
    '/startscreen': (context) => StartScreen(),
    '/createaccount': (context) => CreateAccount(),
    '/signupcomplete': (context) => SignUpComplete(),
    "/login": (context) => LogIn(),
    "/home": (context) => HomeScreen(),
    "/essentialservice": (context) => EssentialService(),
    "/qrscan": (context) => QRScan(),
    "/qrscancheckin": (context) => QRScanCheckIn(),
    "/checkincomplete": (context) => CheckInComplete(),
  },
));
