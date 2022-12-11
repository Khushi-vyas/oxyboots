import 'package:flutter/material.dart';
import 'package:oxyboots/account_and_settings.dart';
import 'package:oxyboots/add_to_cart.dart';
import 'package:oxyboots/favorite.dart';
import 'package:oxyboots/notification.dart';

import '../const.dart';
import '../components/custom_list_tile.dart';
import '../on_board_3.dart';
import '../profile.dart';
import 'home.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xff1E1E1E),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Spacer(
            flex: 2,
          ),
          Padding(
            padding: const EdgeInsets.all(kPadding),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profile()),
                );
              },
              child: CircleAvatar(
                radius: 30,
                backgroundColor: blue,
                child: Image.asset("assets/user.png"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(kPadding),
            child: Text(
              "Hey, 👋",
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(kPadding),
            child: Text(
              "Allison Becker",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          SizedBox(height: 30),
          DrawerListTile(
            nextPage: AccountAndSettings(),
            text: "Account and Settings",
            iconData: Icons.person_outline,
          ),
          DrawerListTile(
            nextPage: Home(),
            text: "Home Page",
            iconData: Icons.home,
          ),
          DrawerListTile(
            nextPage: AddToCart(),
            text: "My Cart",
            iconData: Icons.add_shopping_cart,
          ),
          DrawerListTile(
            nextPage: Favorite(),
            text: "Favorite",
            iconData: Icons.favorite_border,
          ),
          DrawerListTile(
            nextPage: Home(),
            text: "Orders",
            iconData: Icons.delivery_dining_outlined,
          ),
          DrawerListTile(
            nextPage: Notifications(),
            text: "Notifications",
            iconData: Icons.notifications_active_outlined,
          ),
          Spacer(),
          Divider(
            color: Colors.grey.shade300.withOpacity(0.2),
            thickness: 3,
            indent: 20,
            endIndent: 20,
          ),
          Spacer(),
          DrawerListTile(
            nextPage: OnBoard3(),
            text: "Sign Out",
            iconData: Icons.logout_rounded,
          ),
          Spacer(),
        ],
      ),
    );
  }
}
