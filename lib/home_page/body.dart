import 'package:flutter/material.dart';
import 'package:oxyboots/data_models/shoes_data_model.dart';
import 'package:oxyboots/home_page/row_for_shoe_company.dart';

import '../components/best_choice.dart';
import '../const.dart';
import '../components/popular_shoes.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kPadding),
          child: TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                color: Colors.grey,
              ),
              hintText: "Looking for shoes",
              fillColor: Colors.white,
              filled: true,
              hintStyle: TextStyle(color: Colors.grey),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(28),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        CustomRow(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Popular Shoes",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text("See All"),
              ),
            ],
          ),
        ),
        // SingleChildScrollView(
        //   scrollDirection: Axis.horizontal,
        //   child: Row(
        //     children: [
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: PopularShoes(),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: PopularShoes(),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: PopularShoes(),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: PopularShoes(),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: PopularShoes(),
        //       ),
        //     ],
        //   ),
        // ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: popularShoesList.map((shoe) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: PopularShoes(shoe: shoe),
              );
            }).toList(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "New Arrivals",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text("See All"),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(kPadding),
          child: BestChoiceShoes(),
        ),
        Padding(
          padding: const EdgeInsets.all(kPadding),
          child: BestChoiceShoes(),
        ),
        Padding(
          padding: const EdgeInsets.all(kPadding),
          child: BestChoiceShoes(),
        ),
      ],
    );
  }
}
