import 'package:flutter/material.dart';
import 'package:run_earn_app/screens/splash_screen.dart';

import 'constants.dart';

void main() {
  runApp(const RunEarnApp());
}
class RunEarnApp extends StatelessWidget {
  const RunEarnApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        colorScheme: Theme.of(context).colorScheme.copyWith(
          primary: primaryColor,
        ),
      ),
      home: SplashScreen(),
    );
  }
}
