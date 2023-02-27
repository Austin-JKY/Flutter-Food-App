import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:testing_food_app/Model/Connstant.dart';
import 'package:testing_food_app/Model/category_data.dart';
import 'package:testing_food_app/Pages/Home/Category.dart';

class Food_Cate extends StatefulWidget {
  const Food_Cate({super.key});

  @override
  State<Food_Cate> createState() => _Food_CateState();
}

class _Food_CateState extends State<Food_Cate> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoaries.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            child: Padding(
              padding: EdgeInsets.all(5),
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  _cardImage(categoaries[index]),
                  _foodCardName(categoaries[index]),
                  _foodCardItem(categoaries[index])
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _cardImage(Categoary categories) {
    return Image(
      image: AssetImage(categories.imagePath),
      height: 65,
      width: 100,
    );
  }

  Widget _foodCardName(Categoary categoary) {
    return Text(
      categoary.cateName,
      style:
          TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: purple),
    );
  }

  Widget _foodCardItem(Categoary categoary) {
    return Text(categoary.items.toString() + " kinds",
        style: TextStyle(fontSize: 13));
  }
}
