// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../widgets/text_utils.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List imgList = [
    'assets/images/onboard1.png',
    'assets/images/onboard2.png',
    'assets/images/onboard3.png',
  ];
  int? currentIndex;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SafeArea(
        child: Scaffold(backgroundColor: Colors.white,
          appBar: AppBar(
            leading: Image.asset('assets/images/Ellipse 1.png'),
            backgroundColor: Colors.white,
            title: Textutils(
                color: Colors.black,
                fontSize: 38,
                fontWeight: FontWeight.bold,
                text: 'طارئ',
                underline: TextDecoration.none),
            centerTitle: true,
            elevation: 3,
            // ignore: prefer_const_literals_to_create_immutables
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.notifications,
                  color: Colors.black,
                  size: 30,
                ),
              )
            ],
          ),
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              SizedBox(
                height: 15,
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.grey.withOpacity(.2),
                        borderRadius: BorderRadius.circular(15)),
                    height: 250,
                    child: CarouselSlider.builder(
                        itemCount: imgList.length,
                        itemBuilder: (context, index, realIndex) {
                          return Container(
                              width: double.infinity,
                              margin: EdgeInsets.symmetric(horizontal: 7),
                              child: ClipRRect(
                                child: Image.asset(
                                  imgList[index],
                                  fit: BoxFit.contain,
                                  height: double.infinity,
                                  width: double.infinity,
                                  
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ));
                        },
                        options: CarouselOptions(
                            height: 190,
                            initialPage: 0,
                            autoPlay: true,
                            onPageChanged: (index, _) {
                              setState(() {
                                currentIndex = index;
                              });
                            },
                            enlargeCenterPage: true,
                            autoPlayCurve: Curves.linear)),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildContainer(0),
                      SizedBox(
                        width: 5,
                      ),
                      buildContainer(1),
                      SizedBox(
                        width: 5,
                      ),
                      buildContainer(2),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.all(10),
                              width: 150,
                              height: 100,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.grey,
                              ),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.asset(
                                    'assets/images/Rectangle 13.png',
                                    fit: BoxFit.fill,
                                  )),
                            ),
                            Textutils(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                text: 'Ambulance',
                                underline: TextDecoration.none)
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.all(10),
                              width: 150,
                              height: 100,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.grey,
                              ),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.asset(
                                    'assets/images/Rectangle 12.png',
                                    fit: BoxFit.fill,
                                  )),
                            ),
                            Textutils(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                text: 'Firefighters',
                                underline: TextDecoration.none)
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.all(10),
                              width: 150,
                              height: 100,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.grey,
                              ),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.asset(
                                    'assets/images/Rectangle 14.png',
                                    fit: BoxFit.fill,
                                  )),
                            ),
                            Textutils(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                text: 'Car holder',
                                underline: TextDecoration.none)
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.all(10),
                              width: 150,
                              height: 100,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.grey,
                              ),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.asset(
                                    'assets/images/Rectangle 15.png',
                                    fit: BoxFit.fill,
                                  )),
                            ),
                            Textutils(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                text: 'The police',
                                underline: TextDecoration.none)
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container buildContainer(index) {
    return Container(
      width: 10,
      height: 10,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: currentIndex == index ? Colors.red : Colors.grey.shade400),
    );
  }
}
