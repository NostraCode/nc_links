part of '../_index.dart';

class ProductDetailFab extends StatelessWidget {
  const ProductDetailFab({Key? key}) : super(key: key);

  ProductDetailCtrl get ct => Ctrl.productDetail;
  ProductDetailData get dt => Data.productDetail.st;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.edit),
      onPressed: () => nav.to(Routes.productEdit),
    );
  }
}
