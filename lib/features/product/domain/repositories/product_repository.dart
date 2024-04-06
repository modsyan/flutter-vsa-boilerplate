abstract class ProductRepository {
  Future<List<void>> getAllProducts();
  Future<void> getProductById(int id);
}
