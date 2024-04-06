
import 'package:ecommerce_app/features/product/presentation/models/product_model.dart';
import 'package:either_dart/either.dart';

import '../../domain/repositories/product_repository.dart';
import '../datasource/product_datasource.dart';

class ProductRepositoryImplementation implements ProductRepository {
  final ProductDataSource productDataSource;

  ProductRepositoryImplementation({required this.productDataSource});

  // Future<Either<Failure, List<ProductModel>>> getProducts() async {
  //   try {
  //     final products = await productDataSource.getProducts();
  //     return Right(ProductModel.products);
  //   } on ServerException {
  //     return Left(ServerFailure());
  //   }
  // }

  @override
  Future<List<void>> getAllProducts() {
    // TODO: implement getAllProducts
    throw UnimplementedError();
  }

  @override
  Future<void> getProductById(int id) {
    // TODO: implement getProductById
    throw UnimplementedError();
  }
}