import 'package:flutter/material.dart';
import 'package:registration_app/utils/routes.dart';

import 'screens/homescreen.dart';

void main() => runApp(const RegistrationApp());

class RegistrationApp extends StatelessWidget {
  const RegistrationApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Registration App',
        routes: AppRoutes().get(context),
        home: const HomeScreen());
  }
}
