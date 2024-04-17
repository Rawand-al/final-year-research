import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Models/Screens/Guids/guid.dart';
import 'package:flutter_application_1/Models/Screens/Guids/guid3.dart';
import 'package:flutter_application_1/cons.dart';

class DetailPage3 extends StatefulWidget {
  final int plantId;
  const DetailPage3({Key? key, required this.plantId}) : super(key: key);

  @override
  State<DetailPage3> createState() => _DetailPage3State();
}

class _DetailPage3State extends State<DetailPage3> {
  bool toggleIsFavotarited(bool isFavorited) {
    return !isFavorited;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<Plant3> plantList3 = Plant3.plantList3;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 10,
            left: -100,
            child: SizedBox(
              height: 350,
              child: Image.network(plantList3[widget.plantId].imageURL),
            ),
          ),
          Positioned(
            top: 10,
            left: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //  crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: cons.primaryColor.withOpacity(.15)),
                    child: Icon(
                      Icons.close,
                      color: cons.primaryColor,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    debugPrint('favorite');
                  },
                  child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: cons.primaryColor.withOpacity(.15)),
                      child: IconButton(
                        onPressed: () {
                    setState(() {
                            bool isFavorited3 = toggleIsFavotarited(
                              plantList3[widget.plantId].isFavorated3);
                               plantList3[widget.plantId].isFavorated3=isFavorited3;
                    });
                        },
                        icon: Icon(
                          plantList3[widget.plantId].isFavorated3 == true
                              ? Icons.favorite
                              : Icons.favorite_border,
                          color: cons.primaryColor,
                        ),
                      )),
                ),
              ],
            ),
          ),
          Positioned(
              top: 100,
              left: 20,
              right: 20,
              child: Container(
                width: size.width * .8,
                height: size.height * .8,
                padding: const EdgeInsets.all(20),
                child: Stack(
                  children: [
                    Positioned(
                        top: 10,
                        right: 0,
                        child: SizedBox(
                          height: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              PlantFeature(
                                title: 'وەرز',
                                plantFeature:
                                    plantList3[widget.plantId].Catagoris,
                              ),
                              PlantFeature(
                                title: 'ناوی بەرهەم',
                                plantFeature: plantList3[widget.plantId].name,
                              ),
                              PlantFeature(
                                title: 'پلەی گەرمی',
                                plantFeature: plantList3[widget.plantId]
                                    .temperature
                                    .toString(),
                              ),
                            ],
                          ),
                        ))
                  ],
                ),
              )),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.only(top: 0, left: 30, right: 30),
              height: size.height * .5,
              width: size.width,
              decoration: BoxDecoration(
                color: cons.primaryColor.withOpacity(.4),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
              
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Center(
                            child: Text(
                              plantList3[widget.plantId].name,
                              style: TextStyle(
                                color: cons.primaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 30.0,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Expanded(

                    child: SingleChildScrollView(
                      child: Text(
                      
                      softWrap: true,
                        plantList3[widget.plantId].Decription,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            height: 1.5,
                            fontSize: 18,
                            color: cons.blackcolor.withOpacity(.7)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: SizedBox(
        width: size.width * .9,
        height: 50,
        child: Row(
          children: [
            Container(
              height: 50,
              width: 50,
              child: const Icon(
                Icons.account_balance,
                color: Colors.white,
              ),
              decoration: BoxDecoration(
                  color: cons.primaryColor.withOpacity(.5),
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 1),
                      blurRadius: 5,
                      color: cons.primaryColor.withOpacity(.3),
                    )
                  ]),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  color: cons.primaryColor,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 1),
                      blurRadius: 5,
                      color: cons.primaryColor.withOpacity(.3),
                    )
                  ]),
              child: const Center(
                child: Text(
                  "بەشی هسابات",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}

class PlantFeature extends StatelessWidget {
  final String plantFeature;
  final String title;

  const PlantFeature({
    super.key,
    required this.plantFeature,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(color: cons.blackcolor),
        ),
        Text(
          plantFeature,
          style: TextStyle(
              color: cons.primaryColor,
              fontSize: 18,
              fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
