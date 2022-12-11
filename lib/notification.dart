import 'package:flutter/material.dart';
import 'package:oxyboots/checkout.dart';
import 'package:oxyboots/components/add_to_cart_tile.dart';
import 'package:oxyboots/components/heading.dart';
import 'package:oxyboots/components/notifications_tile.dart';
import 'const.dart';
import 'components/custom_back_button.dart';
import 'components/custom_button.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(kPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomBackButton(),
                  Text(
                    "Notifications",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text("Clear All"),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Heading(title: "Today"),
            NotificationsTile(),
            NotificationsTile(),
            Heading(title: "Yesterday"),
            NotificationsTile(),
            NotificationsTile(),
          ],
        ),
      ),
    ));
  }
}
