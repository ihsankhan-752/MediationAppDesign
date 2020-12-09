import 'package:design/Screens/musicPlayerScreen/MusicPlayer.dart';
import 'package:flutter/material.dart';
class MyPractices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize=MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body:Padding(
          padding: EdgeInsets.only(left: 16,right: 16),
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.list,size: 30,),
                  Spacer(),
                  Icon(Icons.search,size: 30,),
                  SizedBox(width: 25,),
                  Icon(Icons.mobile_friendly)
                ],
              ),
            FirstContainer(),
              SizedBox(height: 25,),
              Text("Daily Practices",style: TextStyle(fontSize: 35,color: Colors.black,fontWeight: FontWeight.bold),),
              MyMusic(image: "images/1.png",title: "Morning Intension",subTitle: "Tune your mind body and soul",),
              MyMusic(image: "images/2.jpg",title: "Find a confidence ",subTitle: "Reduce fear anxity and stress",),
              MyMusic(image: "images/3.png",title: "Unwind After work",subTitle: "Decrease in brain cell volume",),
              MyMusic(image: "images/6.png",title: "Growth Mind Set",subTitle: "Tune your mind body and soul",),

            ],
          ),
        )
      ),
    );
  }
}
class FirstContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize=MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: 20),
      height: screenSize.height*0.2,
      decoration: BoxDecoration(
          borderRadius:BorderRadius.all(Radius.circular(15)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.5),blurRadius: 5),
          ]
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10,right: 10),
        child: Row(
          children: [
            Image.asset("images/4.jpg",height: 100,),
            SizedBox(width: 20,),
            Text("Step back\nand deeply reflect",
              style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}
class MyMusic extends StatelessWidget {
  final String title,subTitle,image;

  const MyMusic({Key key,this.title,this.subTitle,this.image}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>MusicPlayer()));
      },
      child: Container(
        margin: EdgeInsets.only(top: 15),
        height: 80,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.2),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: ListTile(
          leading: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.1),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child:Image.asset(image,fit: BoxFit.cover,)
          ),
          title: Text(title,style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),
          subtitle: Text(subTitle,style: TextStyle(fontSize: 14,color: Colors.black),),
        ),
      ),
    );
  }
}

