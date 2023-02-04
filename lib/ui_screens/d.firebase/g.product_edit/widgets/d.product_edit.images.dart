part of '../_index.dart';

class ProductEditImages extends StatelessWidget {
  const ProductEditImages({Key? key}) : super(key: key);

  ProductEditCtrl get ct => Ctrl.productEdit;
  ProductEditData get dt => Data.productEdit.st;

  @override
  Widget build(BuildContext context) {
    return OnReactive(
      () => Column(
        children: [
          const SizedBoxH(20),
          const Text(
            'double tap to remove image',
            textScaleFactor: 0.7,
          ),
          const SizedBoxH(10),
          dt.rxProductBuffer.st.images.isEmpty
              ? const Text('image is empty')
              : Wrap(
                  runSpacing: 3,
                  spacing: 3,
                  children: [
                    for (var item in dt.rxProductBuffer.st.images.entries) ProductEditImage(map: item),
                  ],
                ),
          const SizedBoxH(30),
          const Text(
            'path of cached images',
            textScaleFactor: 0.7,
          ),
          const SizedBoxH(10),
          for (var item in dt.rxProductBuffer.st.images.entries)
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(item.toString(), textScaleFactor: 0.6),
            ),
        ],
      ),
    );
  }
}
