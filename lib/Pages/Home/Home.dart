import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:testing_food_app/Model/Connstant.dart';
import 'package:testing_food_app/Model/category_data.dart';
import 'package:testing_food_app/Pages/Home/DisFood.dart';
import 'Fooddata.dart';
import 'package:testing_food_app/Pages/Home/Food_Cate.dart';
import 'package:testing_food_app/Pages/Home/Fooddata.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Fooddata> foods = fooddata;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Padding(
                  padding: EdgeInsets.all(15),
                  child: Text(
                    "Welcome Our Food App!",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: purple,
                    ),
                  ),
                ),
                Stack(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.notifications,
                          color: purple,
                        )),
                    Positioned(
                        top: 12,
                        right: 12,
                        child: Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(20)))),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      decoration:
                          const BoxDecoration(color: Colors.white, boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(1, 1),
                          blurRadius: 4,
                        ),
                      ]),
                      child: const ListTile(
                        leading: Icon(Icons.search),
                        trailing: Icon(Icons.filter_list),
                        title: TextField(
                          decoration: InputDecoration(
                              hintText: "Find Your Food",
                              border: InputBorder.none),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Food_Cate(),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: <Widget>[
                          const Text(
                            "Discount Food Res",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: purple,
                            ),
                          ),
                          const Text(
                            "see more",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: navy,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(children: foods.map(_buildDFood).toList())
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildDFood(Fooddata fooddata) {
    return Container(
      child: DisFood(
        category: fooddata.category,
        discount: fooddata.discount,
        id: fooddata.id,
        imagePath: fooddata.imagePath,
        name: fooddata.name,
        price: fooddata.price,
        rating: fooddata.rating,
      ),
    );
  }
}
