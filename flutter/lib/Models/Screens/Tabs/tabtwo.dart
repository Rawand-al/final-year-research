import 'package:flutter/material.dart';
import 'package:flutter_application_1/Models/Screens/Guids/guid2.dart';
import 'package:flutter_application_1/Models/detel/detel.dart';
import 'package:flutter_application_1/Models/plant_widge/plant_widge2.dart';
import 'package:flutter_application_1/Models/plant_widge/plant_widget.dart';
import 'package:flutter_application_1/Models/Screens/Guids/guid.dart';
import 'package:flutter_application_1/Models/detel/detel2.dart';
import 'package:flutter_application_1/cons.dart';
import 'package:page_transition/page_transition.dart';

class tabtwo extends StatefulWidget {
  const tabtwo({super.key});

  @override
  State<tabtwo> createState() => _TabTwoState();
}

class _TabTwoState extends State<tabtwo> {
      bool toggleIsFavotarited2(bool isFavorited2) {
      return !isFavorited2;
    }

   List<Plant2> plantList2 = Plant2.plantList2;
   
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

   return Column(children: [ SizedBox(
              height: size.height * .3,
              child: ListView.builder(
                  itemCount: plantList2.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                child: DetailPage2(
                                  plantId: index,
                                ),
                                type: PageTransitionType.bottomToTop));
                      },
                      child: Container(
                        width: 200,
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        child: Stack(
                          children: [
                            Positioned(
                                top: 10,
                                right: 20,
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        bool isFavorited2 = toggleIsFavotarited2(
                                            plantList2[index].isFavorated2);
                                        plantList2[index].isFavorated2 =
                                            isFavorited2;
                                      });
                                    },
                                    icon: Icon(
                                      plantList2[index].isFavorated2 == true
                                          ? Icons.favorite
                                          : Icons.favorite_border,
                                      color: cons.primaryColor,
                                    ),
                                    iconSize: 30,
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(50)),
                                )),
                            Positioned(
                                left: 50,
                                right: 50,
                                top: 50,
                                bottom: 50,
                                child:
                                    Image.network(plantList2[index].imageURL)),
                            Positioned(
                                left: 15,
                                right: 20,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      plantList2[index].Catagoris,
                                      style: const TextStyle(
                                          color: Colors.black, fontSize: 16),
                                    ),
                                    Text(
                                      plantList2[index].name,
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Positioned(
                                        bottom: 15,
                                        right: 20,
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 2),
                                          decoration: BoxDecoration(
                                            color: Colors.black,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: Text(
                                            r'' +
                                                plantList2[index]
                                                    .plantId
                                                    .toString(),
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16),
                                          ),
                                        ))
                                  ],
                                ))
                          ],
                        ),
                        decoration: BoxDecoration(
                            color: cons.primaryColor,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    );
                  }),
            ),
            Container(
              padding: const EdgeInsets.only(left: 16, bottom: 20, top: 20),
              child: Center(
                child: const Text(
                  "بەرهەمی نوێ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
            ),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                height: size.height * .5,
                child: ListView.builder(
                    itemCount: plantList2.length,
                    scrollDirection: Axis.vertical,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return PlantWidget2(
                        index: index,
                        plantList2: plantList2,
                      );
                    })) ,],);
  }
}