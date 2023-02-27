import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:testing_food_app/Model/Connstant.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool turnNoti = false;
  bool turnLocation = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 50, horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Profile",
                style: TextStyle(
                  color: purple,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                        image: AssetImage("assets/images/pp.png"),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "William Aidem",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "09994637896",
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      // ElevatedButton(
                      //   style: ElevatedButton.styleFrom(
                      //     padding: EdgeInsets.symmetric(
                      //       horizontal: 30,
                      //     ),
                      //     backgroundColor: primary,
                      //   ),
                      //    onPressed: () {},
                      //   child: Text("Edit"),
                      // )
                      Container(
                        height: 25,
                        width: 60,
                        decoration:
                            BoxDecoration(border: Border.all(color: navy)),
                        child: Center(
                            child: Text(
                          "Edit",
                          style: TextStyle(
                            color: navy,
                          ),
                        )),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "Account",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(children: [
                    ListTile(
                      leading: Icon(
                        Icons.payment,
                        color: purple,
                      ),
                      title: Text("Payment"),
                    ),
                    Divider(
                      height: 5,
                      color: purple,
                      thickness: 1,
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.location_on,
                        color: purple,
                      ),
                      title: Text("Location"),
                    ),
                    Divider(
                      height: 5,
                      color: purple,
                      thickness: 1,
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.contact_mail,
                        color: purple,
                      ),
                      title: Text("Connected"),
                    ),
                    Divider(
                      height: 5,
                      color: purple,
                      thickness: 1,
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.shopping_bag,
                        color: purple,
                      ),
                      title: Text("Shopping"),
                    ),
                    Divider(
                      height: 5,
                      color: purple,
                      thickness: 1,
                    ),
                  ]),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Notifications",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("App Notification"),
                          Switch(
                              value: turnNoti,
                              onChanged: (value) {
                                setState(() {
                                  turnNoti = value;
                                });
                              }),
                        ],
                      ),
                      Divider(
                        height: 5,
                        color: purple,
                        thickness: 1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Location"),
                          Switch(
                              value: turnLocation,
                              onChanged: (value) {
                                setState(() {
                                  turnLocation = value;
                                });
                              }),
                        ],
                      ),
                      Divider(
                        height: 5,
                        color: purple,
                        thickness: 1,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Other",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(children: [
                    ListTile(
                      leading: Icon(
                        Icons.settings,
                        color: purple,
                      ),
                      title: Text("Favourite"),
                    ),
                    Divider(
                      height: 5,
                      color: purple,
                      thickness: 1,
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.location_on,
                        color: purple,
                      ),
                      title: Text("Help Center"),
                    ),
                    Divider(
                      height: 5,
                      color: purple,
                      thickness: 1,
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.contact_mail,
                        color: purple,
                      ),
                      title: Text("Setting"),
                    ),
                    Divider(
                      height: 5,
                      color: purple,
                      thickness: 1,
                    ),
                  ]),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: purple,
                          padding: EdgeInsets.symmetric(
                              horizontal: 150, vertical: 15)),
                      onPressed: () {},
                      child: Text("Logout")))
            ],
          ),
        ),
      ),
    );
  }
}
