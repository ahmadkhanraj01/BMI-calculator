import 'package:flutter/material.dart';
import 'package:bmi_calculator/Constants.dart';

class IconContent extends StatelessWidget {
  final IconData? icon;
  final String label;
  const IconContent({this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: const Color(0xff8D8E98),
          size: 80.0,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          label,
          style: kLableTextStyle,
        ),
      ],
    );
  }
}
