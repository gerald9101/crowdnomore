import 'package:flutter/material.dart';
import 'package:crowdnomore/pages/check_in_complete.dart';
import 'package:crowdnomore/pages/create_account.dart';
import 'package:crowdnomore/pages/essential_service.dart';
import 'package:crowdnomore/pages/home_screen.dart';
import 'package:crowdnomore/pages/log_in.dart';
import 'package:crowdnomore/pages/qr_scan.dart';
import 'package:crowdnomore/pages/qr_scan_check_in.dart';
import 'package:crowdnomore/pages/sign_up_complete.dart';
import 'package:crowdnomore/pages/start_screen.dart';
import 'package:crowdnomore/pages/fact_check.dart';
import 'package:crowdnomore/pages/fact_check_results.dart';
import 'package:crowdnomore/pages/manage_booking.dart';
import 'package:crowdnomore/pages/setup_profile_1.dart';
import 'package:crowdnomore/pages/setup_profile_2.dart';
import 'package:crowdnomore/pages/setup_profile_3.dart';
import 'package:crowdnomore/pages/setup_profile_4.dart';
import 'package:crowdnomore/pages/setup_profile_complete.dart';
import 'package:crowdnomore/pages/essential_service_booking.dart';
import 'package:crowdnomore/pages/cfm_check_in.dart';

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
        "/factcheck": (context) => FactCheck(),
        "/factcheckresults": (context) => FactCheckResults(),
        "/managebooking": (context) => ManageBooking(),
        "/setupprofile1": (context) => SetupProfile1(),
        "/setupprofile2": (context) => SetupProfile2(),
        "/setupprofile3": (context) => SetupProfile3(),
        "/setupprofile4": (context) => SetupProfile4(),
        "/setupprofilecomplete": (context) => SetupProfileComplete(),
        "/essentialservicebooking": (context) => EssentialServiceBooking(),
        "/cfmcheckin": (context) => CfmCheckIn(),
      },
));
