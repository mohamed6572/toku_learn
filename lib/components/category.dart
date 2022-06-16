import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget{
 String? text;
 Color? color;
 VoidCallback? onTap;
 Category({required this.onTap,required this.text,required this.color});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 60,
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.all(10),
        child: Text(text!,
        style: TextStyle(
          fontSize: 18,
          color: Colors.white
        ),),
        color: color,

      ),
    );
  }
}
