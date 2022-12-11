import 'package:flutter/material.dart';
import 'package:oxyboots/const.dart';
import 'package:oxyboots/components/custom_button.dart';
import 'package:oxyboots/components/heading.dart';

import 'best_sellers.dart';

class Filter extends StatelessWidget {
  const Filter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(kPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 30),
                  Heading(title: "Filters"),
                  Text("RESET")
                ],
              ),
            ),
            Heading(title: "Gender"),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20), color: blue),
                    child: Padding(
                      padding: const EdgeInsets.all(14),
                      child: Text(
                        "Men",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue.shade50),
                    child: Padding(
                      padding: const EdgeInsets.all(14),
                      child: Text(
                        "Women",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue.shade50),
                    child: Padding(
                      padding: const EdgeInsets.all(14),
                      child: Text(
                        "Unisex",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Heading(title: "Size"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20), color: blue),
                      child: Padding(
                        padding: const EdgeInsets.all(14),
                        child: Text(
                          "UK 4.4",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blue.shade50),
                      child: Padding(
                        padding: const EdgeInsets.all(14),
                        child: Text(
                          "US 5.5",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blue.shade50),
                      child: Padding(
                        padding: const EdgeInsets.all(14),
                        child: Text(
                          "UK 6.5",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blue.shade50),
                      child: Padding(
                        padding: const EdgeInsets.all(14),
                        child: Text(
                          "EU 6.5",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Heading(title: "Price"),
            Slider(value: 1, onChanged: (val) {}),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                  width: double.infinity,
                  child: BlueButton(title: "Apply", page: BestSellers())),
            ),
          ],
        ),
      ),
    );
  }
}
