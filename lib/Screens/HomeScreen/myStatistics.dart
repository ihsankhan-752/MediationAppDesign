import 'package:flutter/material.dart';
class MyStatistics extends StatelessWidget {
  final IconData icon;
  final String title,subTitle;

  const MyStatistics({Key key, this.icon,this.title,this.subTitle}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16,vertical: 5),
      height: 70,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.3),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: ListTile(
        leading: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.5),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Center(child: Icon(icon,color: Colors.teal,size: 30,),),
        ),
        title: Text(title,style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold),),
        subtitle: Text(subTitle,style: TextStyle(fontSize: 12,color: Colors.black),),
        trailing: Icon(Icons.arrow_forward),
      ),
    );
  }
}