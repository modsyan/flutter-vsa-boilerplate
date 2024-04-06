
import 'package:ecommerce_app/features/product/presentation/models/product_model.dart';
import 'package:flutter/material.dart';

class ProductCardWidget extends StatelessWidget {
  final ProductModel product;
  final Function onTap;

  const ProductCardWidget({required Key key, required this.product, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: onTap,
      child: Card(
        child: Column(
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