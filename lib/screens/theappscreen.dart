import 'package:flutter/material.dart';
import 'package:myapplication/components/first_component.dart';
import 'package:myapplication/components/third_Component.dart';
import 'package:ionicons/ionicons.dart';

class My_App_Screen extends StatefulWidget {
  const My_App_Screen({super.key});

  @override
  State<My_App_Screen> createState() => _My_App_ScreenState();
}

class _My_App_ScreenState extends State<My_App_Screen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(tabs: [
              IconButton(onPressed: () {}, icon: Icon(Icons.laptop)),
              IconButton(onPressed: () {}, icon: Icon(Icons.phone)),
              IconButton(onPressed: () {}, icon: Icon(Icons.message))
            ]),
            backgroundColor: Colors.purple.shade700,
            title: Text("Main App"),
          ),
          body: TabBarView(children: [
            ListView(
              children: [
                MyFirstTab(
                    myText: "pink and white",
                    myimagelink:
                        "https://pliroforiki.com/wp-content/uploads/2021/11/dell-laptop-inspiron-5505-15-6-fhd-ryzen-7-4700u-8gb-512gb-ssd-amd-radeon-graphics-win-10-home-platinum-silver-03.jpg"),
                MyFirstTab(
                  myText: "black and white",
                  myimagelink: "https://img.etasawaq.com/2022/01/5310.jpg",
                ),
                MyFirstTab(
                  myText: "Only black",
                  myimagelink:
                      "https://i.dell.com/is/image/DellContent//content/dam/ss2/product-images/dell-client-products/notebooks/inspiron-notebooks/inspiron-15-5515/pdp/notebook-inspiron-15-5515-pdp-module1.jpg?fmt=jpg&wid=965&hei=580",
                )
              ],
            ),
            Row(
              children: [
                Container(
                  child: Text(
                    "mobile one",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Container(
                  child: Text(
                    "mobile two",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Third_component(
                  onTapping: Facebook_Function,
                  mytitle: "Facebook",
                    myIcon: Ionicons.logo_facebook, mysubtitle: "join us on F.b"),
                Third_component(
                  onTapping: Instagram_Function,
                  mytitle: "Instagram",
                  mysubtitle: "join us on instagram",
                  myIcon: Ionicons.logo_instagram,
                )
              ],
            )
          ])),
    );
  }
}
