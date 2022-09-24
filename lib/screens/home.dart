import 'package:flutter/material.dart';
import 'package:myapplication/screens/theappscreen.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(actions: [
          Center(
            child: IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return My_App_Screen();
                    },
                  ));
                },
                icon: Icon(Icons.pages)),
          )
        ]),
        body: Center(
          child: Row(
            children: [
              Text(
                "Welcome Home Page",
                style: TextStyle(fontSize: 30),
              ),
              Icon(Icons.home)
            ],
          ),
        ));
  }
}
