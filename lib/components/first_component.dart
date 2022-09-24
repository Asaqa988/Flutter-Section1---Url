import 'package:flutter/material.dart';

class MyFirstTab extends StatelessWidget {
   MyFirstTab({required this.myText,required this.myimagelink});
  String? myimagelink ;
  String? myText ; 

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: ListView(
        physics: NeverScrollableScrollPhysics(),
        children: [
          Image.network(
              "$myimagelink"),
          Row(
            children: [Text("$myText"), Icon(Icons.laptop)],
          )
        ],
      ),
    );
  }
}
