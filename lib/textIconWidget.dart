import 'package:flutter/material.dart';

class textIconWidget extends StatelessWidget {
  String? Wtext;
  Icon Wicon;

  textIconWidget({required this.Wtext, required this.Wicon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Wicon,
        Text(
          Wtext.toString(),
          style: TextStyle(color: Colors.white70, fontSize: 30),
        ),
      ],
    );
  }
}
