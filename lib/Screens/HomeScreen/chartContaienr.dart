import 'package:flutter/material.dart';

import 'lineContainer.dart';
import 'myChart.dart';

class ChartContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize=MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(left: 16,right: 16,top: 10),
      height:screenSize.height*0.25,
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              LineContainer(),
              LineContainer(),
              LineContainer(),
              LineContainer(),
            ],
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  MyChart(color: Colors.orange,height: 165,),
                  MyChart(color: Colors.green.withOpacity(0.5),height: 145,),
                  MyChart(color: Colors.teal,height: 120,),
                  MyChart(color: Colors.black.withOpacity(0.5),height: 90,),
                  MyChart(color: Colors.red[900],height: 150,),
                  MyChart(color: Colors.brown,height: 120,),
                  MyChart(color: Colors.deepPurple,height: 136,),
                ],
              )
          ),
        ],
      ),

    );
  }
}
