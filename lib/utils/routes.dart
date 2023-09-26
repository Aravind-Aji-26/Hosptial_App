import 'package:flutter/cupertino.dart';
import 'package:registration_app/screens/homescreen.dart';
import 'package:registration_app/screens/otp-screen.dart';

class AppRoutes {
  Map<String, Widget Function(BuildContext)> get(BuildContext context) {
    return {
      HomeScreen.routeName: (context) => const HomeScreen(),
      OtpScreen.routeName: (context) => const OtpScreen(),
    };
  }
}
