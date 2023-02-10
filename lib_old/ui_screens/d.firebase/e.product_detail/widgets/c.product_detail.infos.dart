part of '../_index.dart';

class ProductDetailInfos extends StatelessWidget {
  final Product product;
  const ProductDetailInfos({
    required this.product,
    Key? key,
  }) : super(key: key);

  ProductDetailCtrl get ct => Ctrl.productDetail;
  ProductDetailData get dt => Data.productDetail.st;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBoxH(10),
        Text(product.id),
        const SizedBoxH(20),
        Text(product.name),
        const SizedBoxH(20),
        const Opacity(opacity: 0.3, child: Text('stock')),
        Text('${product.total}'),
      ],
    );
  }
}
