import 'package:flutter/material.dart';
import 'package:simple_shadow/simple_shadow.dart';

import '../const.dart';

class NotificationsTile extends StatelessWidget {
  const NotificationsTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kPadding),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: SimpleShadow(
                opacity: 0.3,
                offset: Offset(10, 16),
                sigma: 10,
                child: Image.asset(
                  "assets/Shoe3.png",
                  width: MediaQuery.of(context).size.width * 0.25,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "We have new",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text(
                  "products with offers",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Text(
                      "\$364.95   ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.lineThrough),
                    ),
                    Text("\$260.00"),
                  ],
                ),
              ],
            ),
          ),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("6 min ago"),
              SizedBox(height: 10),
              Icon(
                Icons.circle,
                color: blue,
                size: 10,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
