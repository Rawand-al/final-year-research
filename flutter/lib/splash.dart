import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Models/sing%20in/login.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/Models/root/secand.dart';
import 'package:flutter_application_1/indrodaction.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => indrodaction()));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      decoration: BoxDecoration(
        
          gradient: LinearGradient(
            
        colors: [Colors.green, Colors.white, Colors.green],
        begin: Alignment.bottomLeft,
        end: Alignment.topRight,
      )),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
              padding: EdgeInsets.only(right: 80),
              width: 500,
              height: 500,
              child: Center(child: Image.asset('images/Farmer.png'))),
        
          
        ],
      ),
    ));
  }
}
