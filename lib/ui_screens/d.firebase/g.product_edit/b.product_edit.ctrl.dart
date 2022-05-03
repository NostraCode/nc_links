part of '_index.dart';

final x1ProductEditCtrl = ProductEditCtrl();

class ProductEditCtrl {
  ProductEditData get dt => x1ProductEditData.st;

  init() => loggerx(ProductEditCtrl).v('init...');

  initProductBuffer() async {
    dt.rmProductBuffer.st = x1ProductDetailCtrl.dt.rmProduct.st!;
    if (dt.rmProductBuffer.st.images.isNotEmpty) {
      Map<String, String> mapx = {};
      for (var image in dt.rmProductBuffer.st.images.entries) {
        final file = await DefaultCacheManager().getSingleFile(image.value);
        mapx[image.key] = file.path;
      }
      dt.rmProductBuffer.st = dt.rmProductBuffer.st.copyWith(images: mapx);
    }
    dt.rmProductBackup.st = dt.rmProductBuffer.st;
  }

  reset() {
    dt.rmProductBuffer.st = dt.rmProductBackup.st;
  }

  increase() {
    final total = dt.rmProductBuffer.st.total;
    final newProductBuffer = dt.rmProductBuffer.st.copyWith(total: total + 1);
    dt.rmProductBuffer.st = newProductBuffer;
  }

  decrease() {
    final total = dt.rmProductBuffer.st.total;
    final newProductBuffer = dt.rmProductBuffer.st.copyWith(total: total - 1);
    dt.rmProductBuffer.st = newProductBuffer;
  }

  Future pickImages() async {
    final id = dt.rmProductBuffer.st.id;
    List<String> listImages = [];
    Map<String, String> mapImages = {};
    dt.rmProductBuffer.st.images.forEach((key, value) {
      listImages.add(value);
    });
    final pickedFiles = await ImagePicker().pickMultiImage();
    pickedFiles?.forEach((item) {
      listImages.add(item.path);
    });
    listImages.asMap().forEach((key, value) {
      mapImages['${dt.colId}/$id/$id-${key.toString()}'] = value;
    });
    dt.rmProductBuffer.st = dt.rmProductBuffer.st.copyWith(images: mapImages);
  }

  removeImage(String key) {
    final mapx = {...dt.rmProductBuffer.st.images}..remove(key);
    final newProductBuffer = dt.rmProductBuffer.st.copyWith(images: mapx);
    dt.rmProductBuffer.st = newProductBuffer;
  }

  update() async {
    RM.navigate.back();
    RM.navigate.toDialog(
      const Center(child: CircularProgressIndicator()),
      barrierDismissible: false,
      barrierColor: Colors.black54,
    );
    await x1XproductServ.updateProduct(dt.rmProductBuffer.st);
    x1XproductServ.readProduct();
    RM.navigate.back();
    RM.navigate.back();
  }
}
