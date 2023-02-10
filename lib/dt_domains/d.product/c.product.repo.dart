part of '_index.dart';

class ProductRepo {
  Future<void> createProduct(Product product) async {
    Product productx = product;
    if (product.images.isNotEmpty) {
      product.images.forEach((key, value) {});
      final imagesWithUrls = await x1FbStorage.st.uploadFiles(product.images);
      productx = product.copyWith(images: imagesWithUrls);
    }
    await x1FbFirestore.createDocument(
      colId: Prov.product.st.colId,
      docId: product.id,
      data: productx.toMap(),
    );
  }

  Future<Product> readProduct() async {
    final docSnapshot = await x1FbFirestore.readDocument(
      colId: Prov.product.st.colId,
      docId: Prov.product.st.rxSelectedId.st,
    );
    return Product.fromMap(docSnapshot.data() ?? {});
  }

  Future<List<Product>> readProducts() async {
    final querySnapshot = await x1FbFirestore.readCollection(
      colId: Prov.product.st.colId,
      limit: Prov.product.st.limit,
      lastCreateTime: Prov.product.st.rxProductList.st.isEmpty
          ? '9999-01-01 00:00:00.000000'
          : Prov.product.st.rxProductList.st.last.createdAt,
    );
    List<Product> products = [];
    for (var item in querySnapshot.docs) {
      products.add(Product.fromMap(item.data()));
    }
    return products;
  }

  Future<void> updateProduct(Product product) async {
    int lengthImages = Prov.product.st.rxProductFuture.st?.images.length ?? 0;
    if (lengthImages > 0) {
      final mainFolder = Prov.product.st.colId;
      final subFolder = Prov.product.st.rxProductFuture.st?.id;
      await x1FbStorage.st.deleteFolder('/$mainFolder/$subFolder');
    }
    Product productx = product;
    if (product.images.isNotEmpty) {
      product.images.forEach((key, value) {});
      final imagesWithUrls = await x1FbStorage.st.uploadFiles(product.images);
      productx = product.copyWith(images: imagesWithUrls);
    }
    await x1FbFirestore.updateDocument(
      colId: Prov.product.st.colId,
      docId: product.id,
      data: productx.toMap(),
    );
  }

  Future<void> deleteProduct() async {
    int lengthImages = Prov.product.st.rxProductFuture.st?.images.length ?? 0;
    if (lengthImages > 0) {
      final mainFolder = Prov.product.st.colId;
      final subFolder = Prov.product.st.rxProductFuture.st?.id;
      await x1FbStorage.st.deleteFolder('/$mainFolder/$subFolder');
    }
    await x1FbFirestore.deleteDocument(
      colId: Prov.product.st.colId,
      docId: Prov.product.st.rxSelectedId.st,
    );
  }

  // ----- ----- ----- ----- ----- ----- ----- -----

  Stream<Product?> streamProduct() {
    final colId = Prov.product.st.colId;
    final docId = Prov.product.st.rxSelectedId.st;

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
    final colId = Prov.product.st.colId;

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
    final colId = Prov.product.st.colId;

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
