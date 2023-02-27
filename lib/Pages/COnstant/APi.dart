import 'dart:convert';

import 'package:testing_food_app/Pages/COnstant/Cos.dart';
import 'package:http/http.dart' as http;
import 'package:testing_food_app/Pages/Home/Category.dart';

import 'Category.dart';

class Api {
  static Future<bool> getCats() async {
    Uri uri = Uri.parse("${Cos.API_URL}/cats");
    var response = await http.get(uri);
    var resData = jsonDecode(response.body);
    if (resData['con']) {
      List lisy = resData["result"] as List;
      List<Category> list = lisy.map((e) => Category.fromJson(e)).toList();
      print(list.length);
    }
    return true;
  }
}
