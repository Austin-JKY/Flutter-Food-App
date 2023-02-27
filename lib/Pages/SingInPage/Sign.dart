import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../Model/Connstant.dart';
import 'Login.dart';
import 'Register.dart';

class Sign extends StatelessWidget {
  const Sign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // ignore: avoid_unnecessary_containers
        body: Container(
      padding: EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 120,
          ),
          ClipOval(child: Image.asset("assets/images/d7.png")),
          SizedBox(
            height: 10,
          ),
          Text(
            "Business on FoodYam!",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: purple),
          ),
          Text(
            "Would you like millions of new customers to enjoy your amazing food and groceries? So would we!",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            textAlign: TextAlign.center,
          ),
          Row(
            children: [
              Expanded(
                  child: OutlinedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: ((context) => Login())));
                      },
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(),
                          foregroundColor: black,
                          side: BorderSide(color: black),
                          padding: EdgeInsets.symmetric(vertical: 13)),
                      child: Text("Login"))),
              SizedBox(
                width: 15,
              ),
              Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => const Register())));
                      },
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(),
                          foregroundColor: white,
                          backgroundColor: purple,
                          side: BorderSide(color: black),
                          padding: EdgeInsets.symmetric(vertical: 13)),
                      child: Text("Register")))
            ],
          )
        ],
      ),
    ));
  }
}
