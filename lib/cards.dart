import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:techworld2/model/product_model.dart';
import 'package:techworld2/screens/details/details_screen.dart';
import 'package:techworld2/screens/item_cart.dart';

import 'constants.dart';

class cards extends StatelessWidget {
  const cards({
    Key? key,
    required this.products,
  }) : super(key: key);
  final List<ProductModel> products;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: GridView.builder(
        itemCount: products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: kDefaultPaddin,
          crossAxisSpacing: kDefaultPaddin,
          childAspectRatio: 0.75,
        ),
        itemBuilder: (context, index) {
          return itemcard(
              product: products[index],
              press: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => detail_screen(
                        product: products[index],
                      ),
                    ));
              });
        },
      ),
    ));
  }
}
