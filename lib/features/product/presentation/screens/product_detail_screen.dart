import 'package:ecommerce_app/features/product/presentation/models/product_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  static const String routeName = '/product-detail';

  ProductDetailScreen({super.key});

  final product = ProductModel(
    id: '1',
    title: 'Product 1',
    description: 'Product 1 description',
    price: 100.0,
    imageUrl: 'https://picsum.photos/seed/picsum/1920/1080',
  );

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Product Detail Screen'),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(product.imageUrl),
            Text(product.title),
            Text(product.price.toString()),
          ],
        ),
      ),
    );
  }
}
