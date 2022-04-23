

import 'package:flutter/material.dart';
class reusableContainer extends StatelessWidget {
  
  Color? color;
  final newChild;
   reusableContainer({
     required this.color,
    required this.newChild
  });
  

  @override

  Widget build(BuildContext context) {
    return Container(
      //width:double.infinity,
      decoration: BoxDecoration(
        borderRadius:BorderRadius.circular(20),
        
      color: color
      ),
      margin: EdgeInsets.all(15),
      child: newChild,
    );
  }
}