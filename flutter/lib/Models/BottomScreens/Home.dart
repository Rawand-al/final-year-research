import 'dart:js_interop';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Models/Screens/Tabs/TabOne.dart';
import 'package:flutter_application_1/Models/Screens/Tabs/tabThree.dart';
import 'package:flutter_application_1/Models/Screens/Tabs/tabtwo.dart';
import 'package:flutter_application_1/Models/detel/detel.dart';
import 'package:flutter_application_1/Models/plant_widge/plant_widget.dart';
import 'package:flutter_application_1/Models/Screens/Guids/guid.dart';
import 'package:flutter_application_1/cons.dart';
import 'package:page_transition/page_transition.dart';

class home1 extends StatefulWidget {
  const home1({super.key});

  @override
  State<home1> createState() => _home1State();
}

class _home1State extends State<home1> with TickerProviderStateMixin {





  @override
  Widget build(BuildContext context) {
    int selectedtIndex = 0;
    Size size = MediaQuery.of(context).size;
    List<Plant> __plantList = Plant.plantList;

   
    List<Widget> _plantList = [
      // 'دانەوێلە',
      // 'میوە',
      // 'سەوزەوات',
      // '',
      // '',
      Tab(child: Text('دانەوێلە'),),
      Tab(child: Text('میوە'),),
      Tab(child: Text('سەوزەوات'),),

    
      
      
      
    ];
TabController _tabController = TabController(length: _plantList.length, vsync: this, initialIndex: 0);


  int _tabIndex = 0;

    bool toggleIsFavotarited(bool isFavorited) {
      return !isFavorited;
    }

    return DefaultTabController(
      length: _plantList.length,
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(
                top: 5,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    width: size.width * .8,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.black54.withOpacity(0.6),
                        ),
                        const Expanded(
                            child: TextField(
                          showCursor: false,
                          decoration: InputDecoration(
                              hintText: "گەران ",
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none),
                        )),
                        Icon(
                          Icons.mic,
                          color: Colors.black54.withOpacity(0.9),
                          size: 20,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              decoration: BoxDecoration(
                  color: cons.primaryColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(20)),
            ),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 50,
                width: size.width,
                child:
                
                TabBar(tabs: _plantList as List<Widget>, controller: _tabController,)
                
                ),


Container(
  width: double.infinity,
  height: size.height,
  child: TabBarView(children:  
  [TabOne(),
  tabtwo(),
  tabThree()]
  
  
  
  ,controller: _tabController ,
  
  
  ),
),
            
            
                  ]))));
            
   
  }
}
