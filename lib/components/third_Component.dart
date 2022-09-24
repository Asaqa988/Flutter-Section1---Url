import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

final Uri Facebook_url = Uri.parse('https://www.facebook.com');
final Uri Instagram_url = Uri.parse('https://www.instagram.com/abcit000/');

Future<void> Facebook_Function() async {
  if (!await launchUrl(Facebook_url)) {
    throw 'Could not launch $Facebook_url';
  }
}

Future<void> Instagram_Function() async {
  if (!await launchUrl(Instagram_url)) {
    throw 'Could not launch $Instagram_url';
  }
}

class Third_component extends StatelessWidget {
  Third_component(
      {required this.myIcon,
      required this.mytitle,
      required this.mysubtitle,
      required this.onTapping});
  String? mytitle;
  String? mysubtitle;
  IconData? myIcon;
  Function()? onTapping;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapping,
      child: Container(
        child: ListTile(
          title: Text(
            "$mytitle",
            style: TextStyle(fontSize: 30, color: Colors.purple),
          ),
          subtitle: Text(
            "$mysubtitle",
            style: TextStyle(fontSize: 25, color: Colors.blue),
          ),
          leading: Icon(myIcon),
        ),
      ),
    );
  }
}
