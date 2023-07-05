part of '../_index.dart';

class ProductInputInfos extends StatelessWidget {
  final Product product;
  const ProductInputInfos({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('name'),
            Text('stock'),
          ],
        ),
        const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(' :  '),
            Text(' :  '),
          ],
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(product.name),
              Text('${product.total}'),
            ],
          ),
        ),
      ],
    );
  }
}
