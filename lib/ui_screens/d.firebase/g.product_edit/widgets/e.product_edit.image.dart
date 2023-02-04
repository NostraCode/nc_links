part of '../_index.dart';

class ProductEditImage extends StatelessWidget {
  final MapEntry<String, String> map;
  const ProductEditImage({
    Key? key,
    required this.map,
  }) : super(key: key);

  ProductEditCtrl get ct => Ctrl.productEdit;
  ProductEditData get dt => Data.productEdit.st;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        border: Border.all(width: 1),
      ),
      padding: const EdgeInsets.all(3),
      child: Stack(
        children: [
          Shimmer.fromColors(
            baseColor: Colors.black12,
            highlightColor: Colors.black26,
            loop: 5,
            child: Container(
              height: 80,
              width: 80,
              // color: Get.theme.scaffoldBackgroundColor,
              color: Colors.grey,
            ),
          ),
          File(map.value).existsSync()
              ? InkWell(
                  child: FadeIn(
                    duration: const Duration(milliseconds: 500),
                    child: Image.file(
                      File(map.value),
                      fit: BoxFit.cover,
                    ),
                  ),
                  onDoubleTap: () => ct.removeImage(map.key),
                )
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
