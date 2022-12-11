import 'package:flutter/material.dart';
import 'package:oxyboots/components/best_sellers_tile.dart';
import 'package:oxyboots/data_models/shoes_data_model.dart';
import '/components/fav_shoes.dart';
import 'components/popular_shoes.dart';
import 'package:oxyboots/filter.dart';

import 'const.dart';
import 'components/custom_back_button.dart';

class BestSellers extends StatelessWidget {
  const BestSellers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(kPadding),
              child: Row(
                children: [
                  CustomBackButton(),
                  Spacer(),
                  Text(
                    "Best Sellers",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: IconButton(
                        onPressed: () {
                          showModalBottomSheet(
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30),
                              ),
                            ),
                            context: (context),
                            builder: (context) {
                              return Filter();
                            },
                          );
                        },
                        icon: Icon(
                          Icons.tune,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.search_outlined,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  width: MediaQuery.of(context).size.width * 0.45,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: BestSellerTile(
                          shoe: popularShoesList[5],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: BestSellerTile(
                          shoe: popularShoesList[2],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    ));
  }
}
