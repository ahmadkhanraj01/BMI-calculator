import 'package:flutter/material.dart';
import 'screens/Page_input.dart';

void main() => runApp( BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xff2C2C54),
        textTheme: const TextTheme(
            bodyMedium:
                TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        appBarTheme: const AppBarTheme(
          elevation: 10,
          shadowColor: Colors.black,
          titleTextStyle:
              TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          backgroundColor: Color(0xff2C2C54),
        ),
        scaffoldBackgroundColor: const Color(0xff474787),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          foregroundColor: Color(0xffAAABB8),
          backgroundColor: Color(0xffECECEC),
          shape: CircleBorder(eccentricity: 0)
        ),
      ),
      home: InputPage(),
    );
  }
}
