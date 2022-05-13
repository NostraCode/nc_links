part of '_index.dart';

final x1ProductRepo = RM.inject<ProductRepo>(() => ProductRepo());

class ProductRepo {
  Future<void> createProduct(Productx product) async {
    Productx productx = product;
    if (product.images.isNotEmpty) {
      product.images.forEach((key, value) {});
      final imagesWithUrls = await x1FbStorage.st.uploadFiles(product.images);
      productx = product.copyWith(images: imagesWithUrls);
    }
    await x1FbFirestore.createDocument(
      colId: x1ProductData.st.colId,
      docId: product.id,
      data: productx.toMap(),
    );
  }

  Future<Productx> readProduct() async {
    final docSnapshot = await x1FbFirestore.readDocument(
      colId: x1ProductData.st.colId,
      docId: x1ProductData.st.rmSelectedId.st,
    );
    return Productx.fromMap(docSnapshot.data() ?? {});
  }

  Future<List<Productx>> readProducts() async {
    final querySnapshot = await x1FbFirestore.readCollection(
      colId: x1ProductData.st.colId,
      limit: x1ProductData.st.limit,
      lastCreateTime: x1ProductData.st.rmProductList.st.isEmpty
          ? '9999-01-01 00:00:00.000000'
          : x1ProductData.st.rmProductList.st.last.createdAt,
    );
    List<Productx> products = [];
    for (var item in querySnapshot.docs) {
      products.add(Productx.fromMap(item.data()));
    }
    return products;
  }

  Future<void> updateProduct(Productx product) async {
    int lengthImages = x1ProductData.st.rmProductFuture.st?.images.length ?? 0;
    if (lengthImages > 0) {
      final mainFolder = x1ProductData.st.colId;
      final subFolder = x1ProductData.st.rmProductFuture.st?.id;
      await x1FbStorage.st.deleteFolder('/$mainFolder/$subFolder');
    }
    Productx productx = product;
    if (product.images.isNotEmpty) {
      product.images.forEach((key, value) {});
      final imagesWithUrls = await x1FbStorage.st.uploadFiles(product.images);
      productx = product.copyWith(images: imagesWithUrls);
    }
    await x1FbFirestore.updateDocument(
      colId: x1ProductData.st.colId,
      docId: product.id,
      data: productx.toMap(),
    );
  }

  Future<void> deleteProduct() async {
    int lengthImages = x1ProductData.st.rmProductFuture.st?.images.length ?? 0;
    if (lengthImages > 0) {
      final mainFolder = x1ProductData.st.colId;
      final subFolder = x1ProductData.st.rmProductFuture.st?.id;
      await x1FbStorage.st.deleteFolder('/$mainFolder/$subFolder');
    }
    await x1FbFirestore.deleteDocument(
      colId: x1ProductData.st.colId,
      docId: x1ProductData.st.rmSelectedId.st,
    );
  }

  // ----- ----- ----- ----- ----- ----- ----- -----

  Stream<Productx?> streamProduct() {
    final colId = x1ProductData.st.colId;
    final docId = x1ProductData.st.rmSelectedId.st;

    return x1FbFirestore
        .streamDocument(colId: colId, docId: docId)
        .map((event) {
      final data = event.data();
      if (data != null) {
        return Productx.fromMap(data);
      } else {
        return null;
      }
    });
  }

  Stream<List<Productx>> streamProducts() {
    final colId = x1ProductData.st.colId;

    return x1FbFirestore.streamCollection(colId: colId).map((event) {
      List<Productx> listx = [];
      for (var item in event.docChanges) {
        if (item.doc.data() != null) {
          listx.add(Productx.fromMap(item.doc.data()!));
        }
      }
      return listx;
    });
  }

  Stream<List<Map<String, Productx>>> streamProductsX() {
    final colId = x1ProductData.st.colId;

    return x1FbFirestore.streamCollection(colId: colId).map((event) {
      List<Map<String, Productx>> listx = [];
      for (var item in event.docChanges) {
        if (item.doc.data() != null) {
          var changeType = 'added';
          if (item.type == DocumentChangeType.modified) {
            changeType = 'modified';
          } else if (item.type == DocumentChangeType.removed) {
            changeType = 'removed';
          }

          final product = Productx.fromMap(item.doc.data()!);
          listx.add({changeType: product});
        }
      }
      return listx;
    });
  }
}
