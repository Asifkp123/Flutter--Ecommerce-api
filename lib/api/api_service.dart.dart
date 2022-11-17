import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:techworld2/model/product_model.dart';

class ApiService {
  Future<List<ProductModel>> fetchAllProducts() async {
    final List<ProductModel> products = [];
    final url =
        Uri.parse("http://174.138.121.52:3009/v1/product/getAllProduct");
    final response = await http.get(url);
    final jsonData = jsonDecode(response.body);
    for (var product in jsonData['data']) {
      products.add(ProductModel.fromJson(product));
    }
    return products;
  }
}
