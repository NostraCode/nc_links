part of '../_index.dart';

class ProductInputTile extends StatelessWidget {
  final Product product;
  final Animation<double> animation;
  const ProductInputTile({
    Key? key,
    required this.product,
    required this.animation,
  }) : super(key: key);

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
          onDoubleTap: () => _ct.removeById(product.id),
          onTap: () => _ct.pickImages(product.id),
        ),
      ),
    );
  }
}
