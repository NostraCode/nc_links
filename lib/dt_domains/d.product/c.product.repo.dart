part of '_index.dart';

final x1ProductRepo = RM.inject<ProductRepo>(() => ProductRepo());

class ProductRepo {
  Future<void> createProduct(Product product) async {
    Product productx = product;
    if (product.images.isNotEmpty) {
      product.images.forEach((key, value) {});
      final imagesWithUrls = await x1FbStorage.st.uploadFiles(product.images);
      productx = product.copyWith(images: imagesWithUrls);
    }
    await x1FbFirestore.createDocument(
      colId: x1ProductProv.st.colId,
      docId: product.id,
      data: productx.toMap(),
    );
  }

  Future<Product> readProduct() async {
    final docSnapshot = await x1FbFirestore.readDocument(
      colId: x1ProductProv.st.colId,
      docId: x1ProductProv.st.rxSelectedId.st,
    );
    return Product.fromMap(docSnapshot.data() ?? {});
  }

  Future<List<Product>> readProducts() async {
    final querySnapshot = await x1FbFirestore.readCollection(
      colId: x1ProductProv.st.colId,
      limit: x1ProductProv.st.limit,
      lastCreateTime: x1ProductProv.st.rxProductList.st.isEmpty
          ? '9999-01-01 00:00:00.000000'
          : x1ProductProv.st.rxProductList.st.last.createdAt,
    );
    List<Product> products = [];
    for (var item in querySnapshot.docs) {
      products.add(Product.fromMap(item.data()));
    }
    return products;
  }

  Future<void> updateProduct(Product product) async {
    int lengthImages = x1ProductProv.st.rxProductFuture.st?.images.length ?? 0;
    if (lengthImages > 0) {
      final mainFolder = x1ProductProv.st.colId;
      final subFolder = x1ProductProv.st.rxProductFuture.st?.id;
      await x1FbStorage.st.deleteFolder('/$mainFolder/$subFolder');
    }
    Product productx = product;
    if (product.images.isNotEmpty) {
      product.images.forEach((key, value) {});
      final imagesWithUrls = await x1FbStorage.st.uploadFiles(product.images);
      productx = product.copyWith(images: imagesWithUrls);
    }
    await x1FbFirestore.updateDocument(
      colId: x1ProductProv.st.colId,
      docId: product.id,
      data: productx.toMap(),
    );
  }

  Future<void> deleteProduct() async {
    int lengthImages = x1ProductProv.st.rxProductFuture.st?.images.length ?? 0;
    if (lengthImages > 0) {
      final mainFolder = x1ProductProv.st.colId;
      final subFolder = x1ProductProv.st.rxProductFuture.st?.id;
      await x1FbStorage.st.deleteFolder('/$mainFolder/$subFolder');
    }
    await x1FbFirestore.deleteDocument(
      colId: x1ProductProv.st.colId,
      docId: x1ProductProv.st.rxSelectedId.st,
    );
  }

  // ----- ----- ----- ----- ----- ----- ----- -----

  Stream<Product?> streamProduct() {
    final colId = x1ProductProv.st.colId;
    final docId = x1ProductProv.st.rxSelectedId.st;

    return x1FbFirestore.streamDocument(colId: colId, docId: docId).map((event) {
      final data = event.data();
      if (data != null) {
        return Product.fromMap(data);
      } else {
        return null;
      }
    });
  }

  Stream<List<Product>> streamProducts() {
    final colId = x1ProductProv.st.colId;

    return x1FbFirestore.streamCollection(colId: colId).map((event) {
      List<Product> listx = [];
      for (var item in event.docChanges) {
        if (item.doc.data() != null) {
          listx.add(Product.fromMap(item.doc.data()!));
        }
      }
      return listx;
    });
  }

  Stream<List<Map<String, Product>>> streamProductsX() {
    final colId = x1ProductProv.st.colId;

    return x1FbFirestore.streamCollection(colId: colId).map((event) {
      List<Map<String, Product>> listx = [];
      for (var item in event.docChanges) {
        if (item.doc.data() != null) {
          var changeType = 'added';
          if (item.type == DocumentChangeType.modified) {
            changeType = 'modified';
          } else if (item.type == DocumentChangeType.removed) {
            changeType = 'removed';
          }

          final product = Product.fromMap(item.doc.data()!);
          listx.add({changeType: product});
        }
      }
      return listx;
    });
  }
}
