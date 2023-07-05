part of '_index.dart';

class ProductInputCtrl {
  init() => logxx.i(ProductInputCtrl, '...');

  // * animated list ----- ----- ----- ----- ----- ----- -----

  clearProducts() => _dt.products.st = [];

  addAt(int index) {
    _dt.products.st = [..._dt.products.st]..insert(index, Product.random());
    animateIn(index);
  }

  removeAt(int index) {
    final productx = _dt.products.st[index];
    animateOut(index, productx);
    _dt.products.st = [..._dt.products.st]..removeAt(index);
  }

  removeById(String id) {
    final index = _dt.products.st.indexWhere((item) => item.id == id);
    final productx = _dt.products.st[index];
    animateOut(index, productx);
    _dt.products.st = [..._dt.products.st]..removeWhere((item) => item.id == id);
  }

  removeAll() {
    for (var i = 0; i < _dt.products.st.length; i++) {
      final productx = _dt.products.st[i];
      animateOut(0, productx);
    }
    clearProducts();
  }

  animateIn(int index) {
    _dt.listKey.currentState?.insertItem(index);
  }

  animateOut(int animIndex, Product product) {
    _dt.listKey.currentState?.removeItem(
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
    final index = _dt.products.st.indexWhere((element) => element.id == id);

    _dt.products.st[index].images.forEach((key, value) {
      listImages.add(value);
    });
    final pickedFiles = await ImagePicker().pickMultiImage();
    for (var item in pickedFiles) {
      listImages.add(item.path);
    }
    listImages.asMap().forEach((key, value) {
      mapImages['${_dt.colId}/$id/$id-${key.toString()}'] = value;
    });

    final newProduct = _dt.products.st[index].copyWith(images: mapImages);
    final newProducts = [..._dt.products.st]
      ..removeAt(index)
      ..insert(index, newProduct);

    _dt.products.st = newProducts;
  }

  // * create ----- ----- ----- ----- ----- ----- ----- -----

  create() async {
    RM.navigate.back();
    RM.navigate.toDialog(
      const Center(child: CircularProgressIndicator()),
      barrierDismissible: false,
      barrierColor: Colors.black54,
    );
    for (var product in _dt.products.st) {
      await Serv.product.createProduct(product);
      removeById(product.id);
    }
    RM.navigate.back();
    RM.navigate.back();
  }
}
