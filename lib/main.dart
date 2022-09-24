import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapplication/screens/home.dart';

void main() {
  runApp(MaterialApp(home: MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home_Page();
  }
}
