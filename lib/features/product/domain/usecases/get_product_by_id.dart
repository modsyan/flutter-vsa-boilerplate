import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/base/base_usecase.dart';
import 'package:ecommerce_app/core/network/failure.dart';
import 'package:ecommerce_app/features/product/domain/entities/product_entity.dart';

class GetProductByIdUseCase extends BaseUseCase<String, ProductEntity> {
  @override
  Future<Either<Failure, ProductEntity>> execute(String input) {
    return Future.value(Right(ProductEntity(
      id: "1",
      title: "title",
      price: 1.0,
      description: "description",
      category: "category",
      imageUrl: '',
    )));
  }
}
