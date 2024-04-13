import 'package:ecommerce_app/features/product/data/datasource/product_datasource.dart';
import 'package:ecommerce_app/features/product/data/repositories/product_repository.implementation.dart';
import 'package:ecommerce_app/features/product/domain/repositories/product_repository.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void productSetupLocator() {
  // Register your dependencies here
  // getIt.registerSingleton<AuthService>(AuthService());
  // getIt.registerSingleton<UserService>(UserService());
  getIt.registerSingleton<ProductRepository>(ProductRepositoryImplementation());
  getIt.registerSingleton<ProductDataSource>(ProductDataSource());
}
