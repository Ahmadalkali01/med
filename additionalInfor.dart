import 'package:flutter/material.dart';

class additionalInfor extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  const additionalInfor(
      {super.key,
      required this.icon,
      required this.label,
      required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [Icon(icon), Text(label), Text(value)],
    );

    // Column(
    //   children: [Icon(Icons.water_drop), Text('Humidity'), Text('95')],
    // ),
    // Column(
    //   children: [Icon(Icons.water_drop), Text('Pressure'), Text('95')],
    // ),
  }
}
