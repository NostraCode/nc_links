part of '_index.dart';

final x1ProductEditCtrl = ProductEditCtrl();

class ProductEditCtrl {
  ProductEditData get dt => x1ProductEditData.st;

  init() => logxx.i(ProductEditCtrl, '...');

  initProductBuffer() async {
    dt.rxProductBuffer.st = x1ProductDetailCtrl.dt.rxProduct.st!;
    if (dt.rxProductBuffer.st.images.isNotEmpty) {
      Map<String, String> mapx = {};
      for (var image in dt.rxProductBuffer.st.images.entries) {
        final file = await DefaultCacheManager().getSingleFile(image.value);
        mapx[image.key] = file.path;
      }
      dt.rxProductBuffer.st = dt.rxProductBuffer.st.copyWith(images: mapx);
    }
    dt.rxProductBackup.st = dt.rxProductBuffer.st;
  }

  reset() {
    dt.rxProductBuffer.st = dt.rxProductBackup.st;
  }

  increase() {
    final total = dt.rxProductBuffer.st.total;
    final newProductBuffer = dt.rxProductBuffer.st.copyWith(total: total + 1);
    dt.rxProductBuffer.st = newProductBuffer;
  }

  decrease() {
    final total = dt.rxProductBuffer.st.total;
    final newProductBuffer = dt.rxProductBuffer.st.copyWith(total: total - 1);
    dt.rxProductBuffer.st = newProductBuffer;
  }

  Future pickImages() async {
    final id = dt.rxProductBuffer.st.id;
    List<String> listImages = [];
    Map<String, String> mapImages = {};
    dt.rxProductBuffer.st.images.forEach((key, value) {
      listImages.add(value);
    });
    final pickedFiles = await ImagePicker().pickMultiImage();
    for (var item in pickedFiles) {
      listImages.add(item.path);
    }
    listImages.asMap().forEach((key, value) {
      mapImages['${dt.colId}/$id/$id-${key.toString()}'] = value;
    });
    dt.rxProductBuffer.st = dt.rxProductBuffer.st.copyWith(images: mapImages);
  }

  removeImage(String key) {
    final mapx = {...dt.rxProductBuffer.st.images}..remove(key);
    final newProductBuffer = dt.rxProductBuffer.st.copyWith(images: mapx);
    dt.rxProductBuffer.st = newProductBuffer;
  }

  update() async {
    RM.navigate.back();
    RM.navigate.toDialog(
      const Center(child: CircularProgressIndicator()),
      barrierDismissible: false,
      barrierColor: Colors.black54,
    );
    await x1ProductServ.updateProduct(dt.rxProductBuffer.st);
    x1ProductServ.readProduct();
    RM.navigate.back();
    RM.navigate.back();
  }
}
