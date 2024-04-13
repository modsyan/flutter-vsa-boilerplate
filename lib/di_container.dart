import 'package:ecommerce_app/features/product/di_container.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupLocator() {
  // Register your dependencies here
  productSetupLocator();
}
