import 'package:flutter/material.dart';
class LineContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return   Container(
      margin: EdgeInsets.only(top: 10),
      height: 1,
      width: double.infinity,
      color: Colors.black.withOpacity(0.5),
    );
  }
}