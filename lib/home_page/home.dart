import 'package:flutter/material.dart';
import 'package:oxyboots/add_to_cart.dart';
import 'package:oxyboots/best_sellers.dart';
import 'package:oxyboots/components/best_choice.dart';
import 'package:oxyboots/const.dart';
import 'package:oxyboots/home_page/body.dart';
import 'package:oxyboots/home_page/drawer.dart';
import 'package:oxyboots/home_page/row_for_shoe_company.dart';
import 'package:oxyboots/notification.dart';
import 'package:oxyboots/profile.dart';
import '../components/popular_shoes.dart';
import '../favorite.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> page = [
      HomeBody(),
      Favorite(),
      AddToCart(),
      Notifications(),
      Profile()
    ];
    int selectedIndex = 0;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        // leading: Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: Container(
        //     decoration: BoxDecoration(
        //       color: Colors.white,
        //       borderRadius: BorderRadius.circular(16),
        //     ),
        //     child: GestureDetector(
        //       onTap: () {
        //         Scaffold.of(context).openDrawer();
        //       },
        //       child: Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Icon(
        //           Icons.menu,
        //           color: Colors.black,
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
        centerTitle: true,
        title: Column(
          children: [
            Text(
              "Store Location",
              style: TextStyle(
                fontWeight: FontWeight.w200,
                color: Colors.black,
                fontSize: 12,
              ),
            ),
            Text(
              "📍 Mondolibug, Syllhet",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 16),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BestSellers()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      drawer: const CustomDrawer(),
      // body: page[selectedIndex],
      body: HomeBody(),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: blue,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        iconSize: 28,
        currentIndex: selectedIndex,
        onTap: (index) {
          if (index != 0) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => page[index]));
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none_outlined),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
