import 'package:flutter/material.dart';
import 'package:oxyboots/add_to_cart.dart';
import 'package:oxyboots/components/custom_button.dart';
import 'package:oxyboots/components/heading.dart';
import 'package:oxyboots/data_models/shoes_data_model.dart';
import 'package:simple_shadow/simple_shadow.dart';

import 'const.dart';
import 'components/custom_back_button.dart';

class Details extends StatelessWidget {
  final Shoe shoe;
  const Details({Key? key, required this.shoe}) : super(key: key);

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
                    "Men's Shoes",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.shopping_bag_outlined,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // SizedBox(height: 20),
            Center(
              child: SimpleShadow(
                opacity: 0.6,
                offset: Offset(10, 30),
                sigma: 12,
                child: Image.asset(
                  shoe.image,
                  width: MediaQuery.of(context).size.width * 0.8,
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: kPadding),
                      child: Text(
                        "BEST SELLER",
                        style: TextStyle(color: blue),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(kPadding),
                      child: Text(
                        shoe.name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: kPadding),
                      child: Text(
                        shoe.price,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(kPadding),
                      child: Text(
                        shoe.description,
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    Heading(title: "Gallery"),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: CircleAvatar(
                            child: Image.asset("assets/Shoe1.png"),
                            backgroundColor: Colors.grey.shade200,
                            radius: 26,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: CircleAvatar(
                            child: Image.asset("assets/Shoe2.png"),
                            backgroundColor: Colors.grey.shade200,
                            radius: 26,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: CircleAvatar(
                            child: Image.asset("assets/Shoe3.png"),
                            backgroundColor: Colors.grey.shade200,
                            radius: 26,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(kPadding),
                      child: Row(
                        children: [
                          Heading(title: "Size"),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            child: CircleAvatar(
                              radius: 16,
                              child: Text(
                                "EU",
                                style: TextStyle(fontSize: 14),
                              ),
                              backgroundColor: Colors.grey.shade200,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            child: CircleAvatar(
                              radius: 16,
                              child: Text(
                                "US",
                                style: TextStyle(fontSize: 14),
                              ),
                              backgroundColor: Colors.grey.shade200,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            child: CircleAvatar(
                              radius: 16,
                              child: Text(
                                "UK",
                                style: TextStyle(fontSize: 14),
                              ),
                              backgroundColor: Colors.grey.shade200,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: kPadding),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            child: CircleAvatar(
                              child: Text(
                                "38",
                                style: TextStyle(fontSize: 14),
                              ),
                              backgroundColor: Colors.grey.shade200,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            child: CircleAvatar(
                              child: Text(
                                "39",
                                style: TextStyle(fontSize: 14),
                              ),
                              backgroundColor: Colors.grey.shade200,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            child: CircleAvatar(
                              child: Text(
                                "40",
                                style: TextStyle(fontSize: 14),
                              ),
                              backgroundColor: Colors.grey.shade200,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            child: CircleAvatar(
                              child: Text(
                                "41",
                                style: TextStyle(fontSize: 14),
                              ),
                              backgroundColor: Colors.grey.shade200,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            child: CircleAvatar(
                              child: Text(
                                "42",
                                style: TextStyle(fontSize: 14),
                              ),
                              backgroundColor: Colors.grey.shade200,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            child: CircleAvatar(
                              child: Text(
                                "43",
                                style: TextStyle(fontSize: 14),
                              ),
                              backgroundColor: Colors.grey.shade200,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.all(kPadding),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Price",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Text(
                                "\$493.00",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                          BlueButton(title: "Add to Cart", page: AddToCart()),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
