part of '../_index.dart';

class ProductInputTile extends StatelessWidget {
  final Product product;
  final Animation<double> animation;
  const ProductInputTile({
    Key? key,
    required this.product,
    required this.animation,
  }) : super(key: key);

  ProductInputCtrl get ct => x1ProductInputCtrl;
  ProductInputData get dt => x1ProductInputData.st;

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      sizeFactor: animation,
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          child: Container(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(product.id),
                      ProductInputInfos(product: product),
                      const SizedBoxH(20),
                      ProductInputImages(product: product),
                    ],
                  ),
                ),
              ],
            ),
          ),
          onDoubleTap: () => ct.removeById(product.id),
          onTap: () => ct.pickImages(product.id),
        ),
      ),
    );
  }
}
