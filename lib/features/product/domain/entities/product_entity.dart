import "package:json_annotation/json_annotation.dart";

part 'product_entity.g.dart';

@JsonSerializable()
class ProductEntity {
  final String id;
  final String title;
  final double price;
  final String description;
  final String category;
  final String imageUrl;

  ProductEntity({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.imageUrl,
  });

  factory ProductEntity.fromJson(Map<String, dynamic> json) =>
      _$ProductEntityFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ProductEntityToJson(this);
}
