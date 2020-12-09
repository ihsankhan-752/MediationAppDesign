import 'package:flutter/material.dart';
class Days extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Text("Sun",style: TextStyle(fontSize: 12,color: Colors.black),),
          SizedBox(width: 40,),
          Text("Mon",style: TextStyle(fontSize: 12,color: Colors.black),),
          SizedBox(width: 35,),
          Text("Tue",style: TextStyle(fontSize: 12,color: Colors.black),),
          SizedBox(width: 35,),
          Text("Wed",style: TextStyle(fontSize: 12,color: Colors.black),),
          SizedBox(width: 35,),
          Text("Thu",style: TextStyle(fontSize: 12,color: Colors.black),),
          SizedBox(width: 40,),
          Text("Fri",style: TextStyle(fontSize: 12,color: Colors.black),),
          SizedBox(width: 45,),
          Text("Sat",style: TextStyle(fontSize: 12,color: Colors.black),),
        ],
      ),
    );
  }
}