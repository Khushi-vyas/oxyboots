import 'package:flutter/material.dart';
import 'package:oxyboots/components/fav_shoes.dart';
import 'package:oxyboots/components/popular_shoes.dart';
import 'package:oxyboots/data_models/shoes_data_model.dart';

import 'const.dart';
import 'components/custom_back_button.dart';

class Favorite extends StatelessWidget {
  const Favorite({Key? key}) : super(key: key);

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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomBackButton(),
                  Text(
                    "Favorite",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.favorite_outline,
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
              itemCount: (popularShoesList.length / 2).ceil(),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  width: MediaQuery.of(context).size.width * 0.45,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FavoriteShoes(shoe: popularShoesList[2 * index]),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FavoriteShoes(
                            shoe: popularShoesList[2 * index + 1]),
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
