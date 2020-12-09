import 'package:flutter/material.dart';
class MyChart extends StatelessWidget {
  final double height;
  final Color color;

  const MyChart({Key key, this.height,this.color}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: 20,
      decoration: BoxDecoration(
          color:color,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))

      ),

    );
  }
}