import 'package:ecommerce_app/features/product/presentation/models/product_model.dart';
import 'package:ecommerce_app/features/product/presentation/screens/product_detail_screen.dart';
import 'package:flutter/material.dart';

class ProductHomeScreen extends StatelessWidget {
  ProductHomeScreen({super.key});

  static const String routeName = '/product-home';

  //list of products card
  final List<ProductModel> products = [
    ProductModel(
        id: '1',
        title: 'Product 1',
        description: 'Product 1 description',
        price: 100.0,
        imageUrl: 'https://picsum.photos/seed/picsum/1920/1080'),
    ProductModel(
        id: '2',
        title: 'Product 2',
        description: 'Product 2 description',
        price: 200.0,
        imageUrl: 'https://picsum.photos/seed/picsum/1920/1080'),
    ProductModel(
        id: '3',
        title: 'Product 3',
        description: 'Product 3 description',
        price: 300.0,
        imageUrl: 'https://picsum.photos/seed/picsum/1920/1080'),
    ProductModel(
        id: '4',
        title: 'Product 4',
        description: 'Product 4 description',
        price: 400.0,
        imageUrl: 'https://picsum.photos/seed/picsum/1920/1080'),
    ProductModel(
        id: '5',
        title: 'Product 5',
        description: 'Product 5 description',
        price: 500.0,
        imageUrl: 'https://picsum.photos/seed/picsum/1920/1080'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Product Home Screen'),
        ),
        body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            final product = products[index];
            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  ProductDetailScreen.routeName,
                  arguments: product,
                );
              },
              child: Card(
                child: Column(
                  children: [
                    Image.network(product.imageUrl),
                    Text(product.title),
                    Text(
                      product.price.toString(),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ));
  }
}
