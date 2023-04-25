import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../models/category_model.dart';
import '../../shared/styles/colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Category> catego = [
    Category(
      imagUrl: "assets/images/emily.png",
      name: "Yoga exercises",
    ),
    Category(
      imagUrl: "assets/images/sule.png",
      name: "Example exercises",
    ),
    Category(
      imagUrl: "assets/images/alexsandra.png",
      name: "Example exercises",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kThirdColor,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: NetworkImage(
              'https://firebasestorage.googleapis.com/v0/b/litecoin-ziggy.appspot.com/o/image3.png?alt=media&token=cfccea3d-33d3-43be-9655-35a804ce08b4'),
          fit: BoxFit.cover,
          //image: AssetImage('assets/images/black/3.jpg'),
        )),
        child: Column(
          children: [
            //first row with username n user icon
            Padding(
              padding: const EdgeInsets.only(top: 55.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Row(
                      children: [
                        RichText(
                          text: const TextSpan(
                            text: 'Hey ',
                            style: TextStyle(
                                fontFamily: "Bebas",
                                fontSize: 30,
                                letterSpacing: 2),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Ikenna',
                                style: TextStyle(color: kFirstColor),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          border: Border.all(width: 2, color: kFirstColor),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),

            //container with play button
            Container(
              width: MediaQuery.of(context).size.width,
              height: 335,
              //color: Colors.white,
              child: Center(
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: kFirstColor,
                      borderRadius: BorderRadius.circular(30)),
                  child: Icon(
                    Icons.play_circle,
                    size: 40,
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 70, left: 15),
              child: Row(
                children: [
                  RichText(
                    text: const TextSpan(
                      text: 'Find ',
                      style: TextStyle(
                        fontFamily: "Bebas",
                        fontSize: 22,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'WorkOut that Match nitch',
                          style: TextStyle(color: kFirstColor),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),

            //horizontal row
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Text(
                    'Most Popular Workout',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),

            //row with exercise
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Container(
                width: double.infinity,
                height: 200,
                child: ListView.builder(
                    itemCount: catego.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Column(
                          children: [
                            Container(
                              height: 172,
                              width: 141,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(catego[index].imagUrl),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              catego[index].name,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
