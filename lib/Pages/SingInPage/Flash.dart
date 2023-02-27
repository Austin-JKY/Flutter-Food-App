// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';

import "package:flutter_spinkit/flutter_spinkit.dart";
import 'package:testing_food_app/Pages/SingInPage/Sign.dart';

import '../COnstant/APi.dart';

class Flash extends StatefulWidget {
  const Flash({super.key});

  @override
  State<Flash> createState() => _FlashState();
}

class _FlashState extends State<Flash> {
  loadAllInitData() async {
    var data1 = await Api.getCats();

    if (data1) {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Sign(),
          ));
    } else {
      print('Error Loading');
    }
  }

  @override
  void initState() {
    super.initState();
    loadAllInitData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: double.infinity,
      child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ClipOval(
              child: Image.asset(
            "assets/images/d7.png",
            width: 150,
            height: 150,
          )),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "FOOD",
                style: TextStyle(color: Colors.black, fontSize: 35),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "YAN",
                style: TextStyle(color: Colors.orange, fontSize: 35),
              ),
            ],
          ),
          SizedBox(
            height: 70,
          ),
          SpinKitChasingDots(
            color: Colors.orange,
            size: 70.0,
          ),
        ]),
      ),
    ));
  }
}
