import 'package:flutter/material.dart';

class Fooddata {
  late String id;
  late String name;
  late String imagePath;
  late String category;
  late double price;
  late double discount;
  late double rating;

  Fooddata(
      {required this.id,
      required this.name,
      required this.imagePath,
      required this.category,
      required this.price,
      required this.discount,
      required this.rating});

  factory Fooddata.fromJson(dynamic data) {
    return Fooddata(
        id: data["id"],
        name: data["name"],
        imagePath: data["imagePath"],
        category: data["category"],
        price: data["price"],
        discount: data["discount"],
        rating: data["rating"]);
  }

  // var food = [
  //   Fooddata(
  //       id: "1",
  //       name: "Coffee",
  //       imagePath: "assets/images/d8.png",
  //       category: "1",
  //       price: 24,
  //       discount: 21,
  //       rating: 68.2),
  //   Fooddata(
  //       id: "1",
  //       name: "Coffee",
  //       imagePath: "assets/images/d8.png",
  //       category: "2",
  //       price: 24,
  //       discount: 21,
  //       rating: 68.2),
  //   Fooddata(
  //       id: "1",
  //       name: "Coffee",
  //       imagePath: "assets/images/d8.png",
  //       category: "3",
  //       price: 24,
  //       discount: 21,
  //       rating: 68.2)
  // ];
}
