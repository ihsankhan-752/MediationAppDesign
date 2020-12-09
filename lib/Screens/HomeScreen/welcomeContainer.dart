import 'package:design/Screens/PracticeScreen/myPractices.dart';
import 'package:flutter/material.dart';
class WelcomeContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize=MediaQuery.of(context).size;
    return Container(
        height: screenSize.height*0.35,
        width: screenSize.width,
        decoration: BoxDecoration(
          color: Colors.green[500],
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(35),bottomRight: Radius.circular(35)),
        ),
        child:   Padding(
          padding: EdgeInsets.only(top: 30,left: 16,right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                 IconButton(
                     icon:  Icon(Icons.list,size: 30,),
                     onPressed: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>MyPractices()));
                     }),
                  Spacer(),
                  Icon(Icons.search,size: 30,),
                  SizedBox(width: 25,),
                  Icon(Icons.mobile_friendly)
                ],
              ),
              SizedBox(height: 45,),
              Text("Hi, IHSAN",style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Text("Let's continue to work on your mental health\nand control all the sides of your life and also \n"
                  "make your day special with us",
                style: TextStyle(fontSize: 16,color: Colors.black,),),
            ],
          ),
        )
    );
  }
}