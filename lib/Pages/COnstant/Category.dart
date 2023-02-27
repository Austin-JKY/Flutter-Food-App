import 'package:flutter/foundation.dart';

class Category {
  String? id, name, image, created;
  late SubCat subCat;
  Category(
      {required this.id,
      this.name,
      this.image,
      this.created,
      required this.subCat});

  factory Category.fromJson(dynamic data) {
    SubCat subCat = SubCat.fromJson(data['subCat']);
    return Category(
        id: data['id'],
        name: data['name'],
        image: data['image'],
        created: data['created'],
        subCat: subCat);
  }
}

class SubCat {
  String? id, name, image;
  late ChildCat childCat;
  SubCat({this.id, this.name, this.image, required this.childCat});

  factory SubCat.fromJson(dynamic data) {
    ChildCat childCat = ChildCat.fromJson(data['childcat']);
    return SubCat(
        id: data['id'],
        name: data['name'],
        image: data['image'],
        childCat: childCat);
  }
}

class ChildCat {
  String? id, name, image;

  ChildCat({this.id, this.name, this.image});

  factory ChildCat.fromJson(dynamic data) {
    return ChildCat(
      id: data['id'],
      name: data['name'],
      image: data['image'],
    );
  }
}
