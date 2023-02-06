part of '_index.dart';

class ProductRepoMock implements ProductRepo {
  @override
  Future<void> createProduct(Product product) {
    // TODO: implement createProduct
    throw UnimplementedError();
  }

  @override
  Future<void> deleteProduct() {
    // TODO: implement deleteProduct
    throw UnimplementedError();
  }

  @override
  Future<Product> readProduct() {
    // TODO: implement readProduct
    throw UnimplementedError();
  }

  @override
  Future<List<Product>> readProducts() {
    // TODO: implement readProducts
    throw UnimplementedError();
  }

  @override
  Stream<Product?> streamProduct() {
    // TODO: implement streamProduct
    throw UnimplementedError();
  }

  @override
  Stream<List<Product>> streamProducts() {
    // TODO: implement streamProducts
    throw UnimplementedError();
  }

  @override
  Stream<List<Map<String, Product>>> streamProductsX() {
    // TODO: implement streamProductsX
    throw UnimplementedError();
  }

  @override
  Future<void> updateProduct(Product product) {
    // TODO: implement updateProduct
    throw UnimplementedError();
  }
}
