import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:testing_food_app/Model/Connstant.dart';

class OrderList extends StatefulWidget {
  const OrderList({super.key});

  @override
  State<OrderList> createState() => _OrderListState();
}

class _OrderListState extends State<OrderList> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromARGB(255, 229, 226, 226),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
            width: 45,
            height: 85,
            child: Column(children: [
              InkWell(
                onTap: () {},
                child: const Icon(
                  Icons.arrow_drop_up,
                  color: purple,
                  size: 30,
                ),
              ),
              const Text(
                "0",
                style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.bold, color: purple),
              ),
              InkWell(
                onTap: () {},
                child: const Icon(
                  Icons.arrow_drop_down,
                  color: purple,
                  size: 30,
                ),
              ),
            ]),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage(
                    "assets/images/d1.png",
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(60)),
          ),
          const SizedBox(
            width: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Ice-Creen",
                style: TextStyle(
                  color: purple,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "30",
                style: TextStyle(
                  color: navy,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 20,
                width: 120,
                child: ListView(scrollDirection: Axis.horizontal, children: [
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        "IceFale",
                        style: TextStyle(color: Colors.grey),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.remove,
                          color: Colors.red,
                          size: 20,
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          "IceFale",
                          style: TextStyle(color: Colors.grey),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Icon(
                            Icons.remove,
                            color: Colors.red,
                            size: 20,
                          ),
                        )
                      ],
                    ),
                  ),
                ]),
              )
            ],
          ),
          Spacer(),
          Container(
              margin: EdgeInsets.only(bottom: 40),
              child: GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.cancel,
                    color: Colors.grey,
                  )))
        ]),
      ),
    );
  }
}
