import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:testing_food_app/Pages/Favorate/FavoratePage.dart';
import 'package:testing_food_app/Pages/Home/Home.dart';
import 'package:testing_food_app/Pages/Order/Orderpage.dart';
import 'package:testing_food_app/Pages/Profile/ProfilePage.dart';

import '../../Model/Connstant.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  late Home home;
  late Orderpage orderpage;
  late FavoratePage favoratePage;
  late ProfilePage profilePage;
  late List<Widget> pages;
  late Widget currentpage;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    home = Home();
    orderpage = Orderpage();
    favoratePage = FavoratePage();
    profilePage = ProfilePage();
    pages = [home, orderpage, favoratePage, profilePage];

    currentpage = home;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          onTap: ((int index) {
            setState(() {
              currentIndex = index;
              currentpage = pages[index];
            });
          }),
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
              ),
              label: "Orders",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "Favorite",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
          ]),
      body: currentpage,
    );
  }
}
