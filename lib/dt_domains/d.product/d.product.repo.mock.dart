part of '_index.dart';

class ProductRepoMock implements ProductRepo {
  @override
  Future<void> createProduct(Product product) {
    throw UnimplementedError();
  }

  @override
  Future<void> deleteProduct() {
    throw UnimplementedError();
  }

  @override
  Future<Product> readProduct() {
    throw UnimplementedError();
  }

  @override
  Future<List<Product>> readProducts() {
    throw UnimplementedError();
  }

  @override
  Stream<Product?> streamProduct() {
    throw UnimplementedError();
  }

  @override
  Stream<List<Product>> streamProducts() {
    throw UnimplementedError();
  }

  @override
  Stream<List<Map<String, Product>>> streamProductsX() {
    throw UnimplementedError();
  }

  @override
  Future<void> updateProduct(Product product) {
    throw UnimplementedError();
  }
}
