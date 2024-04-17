import 'package:flutter/material.dart';
import 'package:flutter_application_1/Models/root/secand.dart';
import 'package:flutter_application_1/splash.dart';


void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  Directionality(textDirection: TextDirection.ltr,
      child: MaterialApp(
        
        debugShowCheckedModeBanner: false,
        home: Directionality(textDirection: TextDirection.ltr,
          child:splash() )
        ),
    );
    
  }
}
