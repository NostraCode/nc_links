part of '../_index.dart';

class ProductInputInfos extends StatelessWidget {
  final Productx product;
  const ProductInputInfos({
    Key? key,
    required this.product,
  }) : super(key: key);

  ProductInputCtrl get ct => x1ProductInputCtrl;
  ProductInputData get dt => x1ProductInputData.st;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('name'),
            Text('stock'),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
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
