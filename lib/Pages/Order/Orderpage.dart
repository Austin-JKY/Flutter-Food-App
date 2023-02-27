import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:testing_food_app/Model/Connstant.dart';
import 'package:testing_food_app/Pages/Order/OrderList.dart';

class Orderpage extends StatefulWidget {
  const Orderpage({super.key});

  @override
  State<Orderpage> createState() => _OrderpageState();
}

class _OrderpageState extends State<Orderpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Food Order List",
          style: TextStyle(color: purple),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: white,
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            children: [
              OrderList(),
              OrderList(),
              OrderList(),
              _buildcall(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildcall() {
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
          // ListTile(
          //   leading: Text(
          //     "Total Order",
          //     style: TextStyle(
          //       fontSize: 18,
          //       fontWeight: FontWeight.bold,
          //     ),
          //   ),
          //   trailing: Text(
          //     "2",
          //     style: TextStyle(
          //         fontSize: 18, fontWeight: FontWeight.bold, color: navy),
          //   ),
          // )
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total Order",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              Text(
                "2.0",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Discount",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              Text(
                "3.0",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Tax",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              Text(
                "0.2",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Divider(
            thickness: 2,
            height: 40,
            color: Color.fromARGB(255, 12, 12, 12),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total Bill",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              Text(
                "4000mmk",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15)),
            onPressed: () {},
            child: Text("Add Your Carts"),
          )
        ],
      ),
    );
  }
}
