import 'package:ecommerce_app/features/product/domain/entities/product_entity.dart';

class ProductModel {
  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;

  ProductModel({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.imageUrl,
  });

  // map from entity to model
  factory ProductModel.fromEntity(ProductEntity entity) {
    return ProductModel(
      id: entity.id,
      title: entity.title,
      description: entity.description,
      price: entity.price,
      imageUrl: entity.imageUrl,
    );
  }

  ProductEntity toEntity() {
    return ProductEntity(
      id: id,
      title: title,
      description: description,
      price: price,
      imageUrl: imageUrl,
      category: '',
    );
  }
}
