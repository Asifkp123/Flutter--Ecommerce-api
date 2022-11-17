// To parse this JSON data, do
//
//     final productModel = productModelFromJson(jsonString);

import 'dart:math';

import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class ProductModel {
  ProductModel({
    required this.id,
    required this.name,
    required this.brand,
    required this.image,
    required this.price,
    required this.description,
    required this.color
  });

  int id;
  String name;
  String brand;
  String image;
  String price;
  String description;
  Color color;

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        id: json["id"],
        name: json["name"],
        brand: json["brand"],
        image: json["image"],
        price: json["price"],
        color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "brand": brand,
        "image": image,
        "price": price,
        "description": description,
      };
}
