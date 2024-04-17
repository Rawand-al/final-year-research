import 'package:flutter/material.dart';
import 'package:flutter_application_1/Models/plant_widge/plant_widge3.dart';
import 'package:flutter_application_1/Models/plant_widge/plant_widget.dart';
import 'package:flutter_application_1/Models/Screens/Guids/guid.dart';
import 'package:flutter_application_1/cons.dart';

class Favorite extends StatefulWidget {
  final List<Plant> favoratedPlants;
  const Favorite({Key? key, required this.favoratedPlants}) : super(key: key);

  @override
  State<Favorite> createState() => _favoriteState();
}

class _favoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        body: widget.favoratedPlants.isEmpty
            ? Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                        height: 100,
                        child: Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0tYVQVNqPK7VwhdMq1oVonZbNDxlNFO1_UA&usqp=CAU")),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "رووەکی دل خوازی تۆ",
                      style: TextStyle(
                        color: cons.primaryColor,
                        fontWeight: FontWeight.w300,
                        fontSize: 18,
                      ),
                    )
                  ],
                ),
              )
            : Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 30),
                    height: size.height*.9,
                    child: ListView.builder(
                      itemCount: widget.favoratedPlants.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (BuildContext context, index) {
                      return PlantWidget(index: index, plantList: widget.favoratedPlants);
                    })),
              );
  }
}
