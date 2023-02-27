import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:testing_food_app/Model/Connstant.dart';
import 'package:testing_food_app/Model/category_data.dart';
import 'package:testing_food_app/Pages/Home/Fooddata.dart';

import '../../Model/icon_text_widget.dart';
import 'Fooddata.dart';

class DisFood extends StatefulWidget {
  late String id;
  late String name;
  late String imagePath;
  late String category;
  late double price;
  late double discount;
  late double rating;

  DisFood(
      {required this.id,
      required this.name,
      required this.imagePath,
      required this.category,
      required this.price,
      required this.discount,
      required this.rating});

  @override
  State<DisFood> createState() => _DisFoodState();
}

class _DisFoodState extends State<DisFood> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
            padding: EdgeInsets.all(20),
            height: 180,
            width: 360,
            child: Image.asset(
              widget.imagePath,
              fit: BoxFit.cover,
            )),
        Positioned(
          bottom: 0,
          left: 0,
          child: Container(
            height: 60,
            width: 360,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [d5, black],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter),
            ),
          ),
        ),
        Positioned(
          left: 10,
          bottom: 10,
          right: 10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _nameFood(),
                  Row(
                    children: [
                      Icon(Icons.star,
                          color: Theme.of(context).primaryColor, size: 16),
                      Icon(Icons.star,
                          color: Theme.of(context).primaryColor, size: 16),
                      Icon(Icons.star,
                          color: Theme.of(context).primaryColor, size: 16),
                      Icon(Icons.star,
                          color: Theme.of(context).primaryColor, size: 16),
                      Icon(Icons.star,
                          color: Theme.of(context).primaryColor, size: 16),
                      Text(
                        "${widget.rating.toString()} Reviews",
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  )
                ],
              ),
              Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    widget.price.toString(),
                    style: TextStyle(
                      color: navy,
                      fontSize: 18,
                    ),
                  ),
                  const Text(
                    "Order During",
                    style: TextStyle(color: white),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }

  Widget _nameFood() {
    return Text(
      widget.name,
      style: TextStyle(fontWeight: FontWeight.bold, color: white, fontSize: 18),
    );
  }
}
