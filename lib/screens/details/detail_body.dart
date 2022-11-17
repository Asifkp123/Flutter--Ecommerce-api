import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:techworld2/constants.dart';
import 'package:techworld2/model/product_model.dart';


class Body extends StatelessWidget {
  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
    backgroundColor: Colors.blue,
    padding: EdgeInsets.all(8),
    //few more styles
  );
  final ProductModel product;
  Body({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(children: <Widget>[
        SizedBox(
          height: size.height,
          child: Stack(children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: size.height * 0.5),
              height: 500,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24)),
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // Padding(
                    //   padding: EdgeInsets.symmetric(horizontal: kDefaultPaddin),
                    // ),

                    Padding(
                      padding: EdgeInsets.only(
                          top: size.height * 0.1,
                          left: kDefaultPaddin,
                          right: kDefaultPaddin),
                      child: Text(
                        product.description,
                        style: TextStyle(height: 1.7, fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      height: 7,
                      width: 44,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(vertical: kDefaultPaddin),
                      child: Row(
                        children: <Widget>[
                          const SizedBox(width: 20),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                border: Border.all(color: product.color)),
                            child: IconButton(
                                onPressed: () {
                                  return;
                                },
                                icon: SvgPicture.asset(
                                    "assets/icons/add_to_cart.svg")),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: FloatingActionButton(
                                onPressed: () {},
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16)),
                                child: Text("BUY NOW")),
                          ),
                          SizedBox(
                            height: 12,
                            width: 22,
                          ),
                        ],
                      ),
                    )
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Austhetic Bag",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(product.name,
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                  Row(
                    children: <Widget>[
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: " Price\n  ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            TextSpan(
                                text: "\$${product.price}",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6!
                                    .copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                      Expanded(child: Image.network(product.image))
                    ],
                  ),
                ],
              ),
            ),
          ]),
        )
      ]),
    );
  }
}
