import 'package:flutter/material.dart';
import 'package:shopapp/screens/details/details_screen.dart';

import '../../../constants.dart';
import '../../../models/Product.dart';
import 'product_card.dart';
import 'section_title.dart';


class NewArrival extends StatelessWidget {
  const NewArrival({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: "Nouvelles arrivages",
          pressSeeAll: () {},
        ),
        SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(
            demo_product.length, 
            (index) => Padding(
              padding: const EdgeInsets.only(left: defaultPadding),
              child: ProductCard(
              image: demo_product[index].image,
              title: demo_product[index].title,
              bgColor: demo_product[index].bgColor,
              price: demo_product[index].price,
              press: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => 
                      DetailsScreen(product: demo_product[index]),
                    ));
              },
            ),
          ),
        ),
      ),
    )
      ],
    );
  }
}