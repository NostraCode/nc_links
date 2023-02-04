part of '_index.dart';

class ProductInputCtrl {
  ProductInputData get dt => Data.productInput.st;

  init() => logxx.i(ProductInputCtrl, '...');

  // * animated list ----- ----- ----- ----- ----- ----- -----

  clearProducts() => dt.products.st = [];

  addAt(int index) {
    dt.products.st = [...dt.products.st]..insert(index, Product.random());
    animateIn(index);
  }

  removeAt(int index) {
    final productx = dt.products.st[index];
    animateOut(index, productx);
    dt.products.st = [...dt.products.st]..removeAt(index);
  }

  removeById(String id) {
    final index = dt.products.st.indexWhere((item) => item.id == id);
    final productx = dt.products.st[index];
    animateOut(index, productx);
    dt.products.st = [...dt.products.st]..removeWhere((item) => item.id == id);
  }

  removeAll() {
    for (var i = 0; i < dt.products.st.length; i++) {
      final productx = dt.products.st[i];
      animateOut(0, productx);
    }
    clearProducts();
  }

  animateIn(int index) {
    dt.listKey.currentState?.insertItem(index);
  }

  animateOut(int animIndex, Product product) {
    dt.listKey.currentState?.removeItem(
      animIndex,
      (context, animation) => ProductInputTile(
        product: product,
        animation: animation,
      ),
    );
  }

  // * images ----- ----- ----- ----- ----- ----- ----- -----

  Future<void> pickImages(String id) async {
    List<String> listImages = [];
    Map<String, String> mapImages = {};
    final index = dt.products.st.indexWhere((element) => element.id == id);

    dt.products.st[index].images.forEach((key, value) {
      listImages.add(value);
    });
    final pickedFiles = await ImagePicker().pickMultiImage();
    for (var item in pickedFiles) {
      listImages.add(item.path);
    }
    listImages.asMap().forEach((key, value) {
      mapImages['${dt.colId}/$id/$id-${key.toString()}'] = value;
    });

    final newProduct = dt.products.st[index].copyWith(images: mapImages);
    final newProducts = [...dt.products.st]
      ..removeAt(index)
      ..insert(index, newProduct);

    dt.products.st = newProducts;
  }

  // * create ----- ----- ----- ----- ----- ----- ----- -----

  create() async {
    RM.navigate.back();
    RM.navigate.toDialog(
      const Center(child: CircularProgressIndicator()),
      barrierDismissible: false,
      barrierColor: Colors.black54,
    );
    for (var product in dt.products.st) {
      await Serv.product.createProduct(product);
      removeById(product.id);
    }
    RM.navigate.back();
    RM.navigate.back();
  }
}
