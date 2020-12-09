import 'package:design/Screens/HomeScreen/welcomeContainer.dart';
import 'package:flutter/material.dart';

import 'Days.dart';
import 'chartContaienr.dart';
import 'myStatistics.dart';
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize=MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         WelcomeContainer(),
          SizedBox(height: 15,),
          Padding(
            padding: EdgeInsets.only(left: 16,right: 16),
            child: Row(
              children: [
                Text("Your Progress",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),
                Spacer(),
                Text("This week",style: TextStyle(fontSize: 14,color: Colors.deepOrange,),),
              ],
            ),
          ),
          ChartContainer(),
          Days(),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text("Statistics",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
          ),
          MyStatistics(icon: Icons.signal_cellular_alt,title: "Stress Level",subTitle: "Decreases 25%",),
          MyStatistics(icon: Icons.wifi,title: "Achieving goals",subTitle: "Decreases 12.5%",)



        ],
      ),
    );
  }
}








