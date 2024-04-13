import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../domain/entities/product_entity.dart';

class ProductDataSource {
  final http.Client _client;

  ProductDataSource(this._client);

  Future<List<ProductEntity>> getProducts() async {
    final response = await _client.get(
      Uri.parse('https://fakestoreapi.com/products'),
    );

    if (response.statusCode == 200) {
      final List<dynamic> jsonList = json.decode(response.body);
      return jsonList.map((json) => ProductEntity.fromJson(json)).toList();
    } else {
      throw ServerException();
    }
  }
}

class ServerException implements Exception {
  final String message = 'Server Error';
}
