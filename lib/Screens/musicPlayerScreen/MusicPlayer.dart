import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MusicPlayer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60, left: 16, right: 16),
            child: Text(
              "Unwind After Work",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "Tune your body mind and soul and let them work together.let's go",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.teal[500],
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30)),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      "12:05:35",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "-4:39:00",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Image.asset("images/player.png"),
                    SizedBox(
                      height: 10,
                    ),
                  MusicSetting(),
                    SizedBox(
                      height: 30,
                    ),
                  MySlider(),
                   MusicOptions(),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
class MusicOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return   Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(Icons.fast_rewind_outlined,size: 30,),
        Text(
          "-15s",
          style: TextStyle(fontSize: 15, color: Colors.black),
        ),
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.black,
          child: Center(
            child: Icon(
              Icons.play_arrow,size: 30,
              color: Colors.white,
            ),
          ),
        ),
        Text(
          "+15s",
          style: TextStyle(fontSize: 15, color: Colors.black),
        ),
        Icon(Icons.fast_forward_outlined,size: 30,),
      ],
    );
  }
}
class MySlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderThemeData(
        activeTrackColor: Colors.black,
        inactiveTrackColor: Colors.white,
        thumbColor: Colors.blue,
      ),
      child: Slider(
        min: 0,
        max: 20,
        value: 6,
        onChanged: (value){},
      ),
    );
  }
}
class MusicSetting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          Icons.autorenew_outlined,
          size: 30,
          color: Colors.red[900],
        ),
        Icon(Icons.shuffle, size: 30, color: Colors.red[900]),
        Icon(Icons.mobile_friendly,
            size: 30, color: Colors.red[900]),
        Icon(Icons.exit_to_app,
            size: 30, color: Colors.red[900]),
      ],
    );
  }
}



