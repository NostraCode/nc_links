part of '../_index.dart';

class ProductDetailImages extends StatelessWidget {
  final Productx product;
  const ProductDetailImages({
    required this.product,
    Key? key,
  }) : super(key: key);

  ProductDetailCtrl get ct => x1ProductDetailCtrl;
  ProductDetailData get dt => x1ProductDetailData.st;

  @override
  Widget build(BuildContext context) {
    return product.images.isEmpty
        ? const Text('image is empty')
        : Column(
            children: [
              const SizedBoxH(20),
              Wrap(
                runSpacing: 3,
                spacing: 3,
                children: [
                  for (var item in product.images.entries)
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(border: Border.all(width: 1)),
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
                          FadeIn(
                            duration: const Duration(milliseconds: 500),
                            child: FadeInImage.memoryNetwork(
                              placeholder: kTransparentImage,
                              image: item.value,
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
              const SizedBoxH(30),
              const Text(
                'url of images',
                textScaleFactor: 0.7,
              ),
              const SizedBoxH(10),
              for (var item in product.images.entries)
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(item.toString(), textScaleFactor: 0.6),
                ),
            ],
          );
  }
}
