part of '_index.dart';

class ProductEditCtrl {
  init() => logxx.i(ProductEditCtrl, '...');

  initProductBuffer() async {
    _dt.rxProductBuffer.st = Data.productDetail.st.rxProduct.st!;
    if (_dt.rxProductBuffer.st.images.isNotEmpty) {
      Map<String, String> mapx = {};
      for (var image in _dt.rxProductBuffer.st.images.entries) {
        final file = await DefaultCacheManager().getSingleFile(image.value);
        mapx[image.key] = file.path;
      }
      _dt.rxProductBuffer.st = _dt.rxProductBuffer.st.copyWith(images: mapx);
    }
    _dt.rxProductBackup.st = _dt.rxProductBuffer.st;
  }

  reset() {
    _dt.rxProductBuffer.st = _dt.rxProductBackup.st;
  }

  increase() {
    final total = _dt.rxProductBuffer.st.total;
    final newProductBuffer = _dt.rxProductBuffer.st.copyWith(total: total + 1);
    _dt.rxProductBuffer.st = newProductBuffer;
  }

  decrease() {
    final total = _dt.rxProductBuffer.st.total;
    final newProductBuffer = _dt.rxProductBuffer.st.copyWith(total: total - 1);
    _dt.rxProductBuffer.st = newProductBuffer;
  }

  Future pickImages() async {
    final id = _dt.rxProductBuffer.st.id;
    List<String> listImages = [];
    Map<String, String> mapImages = {};
    _dt.rxProductBuffer.st.images.forEach((key, value) {
      listImages.add(value);
    });
    final pickedFiles = await ImagePicker().pickMultiImage();
    for (var item in pickedFiles) {
      listImages.add(item.path);
    }
    listImages.asMap().forEach((key, value) {
      mapImages['${_dt.colId}/$id/$id-${key.toString()}'] = value;
    });
    _dt.rxProductBuffer.st = _dt.rxProductBuffer.st.copyWith(images: mapImages);
  }

  removeImage(String key) {
    final mapx = {..._dt.rxProductBuffer.st.images}..remove(key);
    final newProductBuffer = _dt.rxProductBuffer.st.copyWith(images: mapx);
    _dt.rxProductBuffer.st = newProductBuffer;
  }

  update() async {
    RM.navigate.back();
    RM.navigate.toDialog(
      const Center(child: CircularProgressIndicator()),
      barrierDismissible: false,
      barrierColor: Colors.black54,
    );
    await Serv.product.updateProduct(_dt.rxProductBuffer.st);
    Serv.product.readProduct();
    RM.navigate.back();
    RM.navigate.back();
  }
}
