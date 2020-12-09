import 'package:design/Screens/HomeScreen/HomeScreen.dart';
import 'package:flutter/material.dart';
class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Container(
            child: Stack(
              children: [
                Image.asset("images/2.jpg",fit: BoxFit.cover,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Every\nOne in this\nEarth is Unique",
                        style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),),
                      SizedBox(height: 20,),
                      Text("Start meditate to enhance\nobjectively and achieve\nthe bravest goals",style: TextStyle(
                          fontSize: 20,color: Colors.black
                      ),),
                      SizedBox(height: 30,),
                      MaterialButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15))
                        ),
                        height: 45,
                        minWidth: 150,
                        color: Colors.green[700],
                        child: Text("Let's Started",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(height: 50,)
                    ],
                  ),
                ),
              ],
            )
        )


    );
  }
}