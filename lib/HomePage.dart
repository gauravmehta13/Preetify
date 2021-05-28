import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:preetify/Constants.dart';

import 'Fade Route.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFaadce5),
        body: SafeArea(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      box30,
                      Text("Explore",
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.w600)),
                      box20,
                      GridView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  childAspectRatio: 1,
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 10),
                          itemCount: gridData.length,
                          itemBuilder: (BuildContext ctx, index) {
                            return InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  FadeRoute(page: gridData[index]["page"]),
                                );
                              },
                              child: Card(
                                elevation: 2,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Colors.grey[300],
                                        child: Image.asset(
                                          gridData[index]["img"],
                                        ),
                                      ),
                                      Text(
                                        gridData[index]["title"],
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: primaryColor, fontSize: 13),
                                      ),
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15)),
                                ),
                              ),
                            );
                          }),
                    ],
                  ),
                ),
                box10,
                CarouselSlider(
                    options: CarouselOptions(
                      pauseAutoPlayOnTouch: true,
                      pauseAutoPlayOnManualNavigate: true,
                      height: 170,
                      aspectRatio: 16 / 9,
                      viewportFraction: 0.8,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 8),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      scrollDirection: Axis.horizontal,
                    ),
                    items: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8))),
                              width: double.maxFinite,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.network(
                                  "https://i.pinimg.com/564x/dc/e3/e1/dce3e149f19ddce673ccc098f1de9627.jpg",
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.5),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8))),
                              padding: EdgeInsets.all(8),
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                "Pokemon Theme Cake",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8))),
                              width: double.maxFinite,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.network(
                                  "https://i.pinimg.com/564x/a2/a6/bd/a2a6bdf5c36e5b8ffef753afa98bfd8c.jpg",
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.5),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8))),
                              padding: EdgeInsets.all(8),
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                "Straberry Cake",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                            )
                          ],
                        ),
                      ),
                    ]),
              ],
            ),
          ),
        ));
  }
}

List gridData = [
  {"title": "Theme Parties  ", "page": HomePage(), "img": "assets/party.png"},
  {"title": "Birthdays", "page": HomePage(), "img": "assets/cake.png"},
  {"title": "Baby Shower", "page": HomePage(), "img": "assets/babyShower.png"},
  {"title": "Occasions", "page": HomePage(), "img": "assets/occasions.png"},
  {
    "title": "Personalised",
    "page": HomePage(),
    "img": "assets/personalised.png"
  },
  {"title": "HandCrafted", "page": HomePage(), "img": "assets/handcraft.png"},
];
