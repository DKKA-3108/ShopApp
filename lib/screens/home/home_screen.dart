import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopapp/constants.dart';

import '../../models/Category.dart';
import '../../models/Product.dart';
import 'components/categories.dart';
import 'components/new_arrival.dart';
import 'components/popular_arrival.dart';
import 'components/product_card.dart';
import 'components/search_form.dart';
import 'components/section_title.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {}, 
          icon: SvgPicture.asset("assets/icons/menu.svg"),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset("assets/icons/Location.svg"),
              const SizedBox(width: defaultPadding),
              Text(
                "Lomé-TOGO", 
                style: Theme.of(context).textTheme.subtitle2,)
              ],
            ),
            actions: [IconButton(
              onPressed: () {}, 
              icon: SvgPicture.asset("assets/icons/Notification.svg"),
              )
              ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text(
            "Explorer",
            style: Theme.of(context)
              .textTheme
              .headline4!
              .copyWith(fontWeight: FontWeight.w500, color: Colors.black),
          ),
          const Text("Meilleurs articles du monde", 
          style: TextStyle(fontSize: 18),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: defaultPadding),
            child: SearchForm(),
          ),
          const Categories(),
          const SizedBox(height: defaultPadding),
          const NewArrival(),
          const SizedBox(height: defaultPadding),
          const Popular(),
        ],
        ),
      ),
    );
  }
}
