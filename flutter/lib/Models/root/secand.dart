
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Models/BottomScreens/Camera.dart';
import 'package:flutter_application_1/Models/favorite/Favorite.dart';
import 'package:flutter_application_1/Models/BottomScreens/History.dart';
import 'package:flutter_application_1/Models/BottomScreens/Balancing.dart';
import 'package:flutter_application_1/Models/BottomScreens/Home.dart';
import 'package:flutter_application_1/Models/Screens/Guids/guid.dart';
import 'package:flutter_application_1/cons.dart';
import 'package:flutter_application_1/displayFruit.dart';
import 'package:flutter_application_1/indrodaction.dart';
import 'package:page_transition/page_transition.dart';

class secand extends StatefulWidget {
  final List<Plant> favoratedPlants;
  secand({Key? key, required this.favoratedPlants, required List favoratedPlants2}) : super(key: key);

  @override
  State<secand> createState() => _secandState();
}

class _secandState extends State<secand> {
  List<Plant> favorite = [];

  int currentIndex = 0;
  int _bottomNaigation = 0;
  List<Widget> _widgetOptions() {
    return [
    const  home1(),
      Favorite(favoratedPlants: favorite),
    const  History(),
    const  balancing(),
    ];
  }

  List<IconData> iconList = [
    Icons.home,
    Icons.favorite,
    Icons.account_balance,
    Icons.work_history,
  ];

  List<String> titleList = [
    'Home',
    'Favorite',
    'HisTory',
    'Balancing',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween
          ,
          children: [
            Center(
              child: Text(
                'پەرەی سەرەکی',
                style: TextStyle(
                    color: cons.blackcolor,
                    fontWeight: FontWeight.w500,
                    fontSize: 24),
              ),
            ),
            Icon(
              Icons.notifications,
              color: cons.blackcolor,
              size: 30,
            )
          ],
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
      ),
      body: IndexedStack(
        index: _bottomNaigation,
        children: _widgetOptions(),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                PageTransition(
                    child: MyHomePage(),
                    type: PageTransitionType.bottomToTop));
          },
          child: Icon(
            Icons.camera,
            size: 30,
          ),
          backgroundColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        splashColor: cons.primaryColor,
        activeColor: cons.primaryColor,
        inactiveColor: Colors.black.withOpacity(1),
        icons: iconList,
        activeIndex: _bottomNaigation,
        gapLocation: GapLocation.none,
        notchSmoothness: NotchSmoothness.softEdge,
        onTap: (index) {
          setState(() {
            _bottomNaigation = index;
            final List<Plant>favoratedPlants=Plant.getFavoratedPlants();
favorite=favoratedPlants;
          });
        },
      ),
    );
  }
}
