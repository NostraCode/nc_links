part of '../_index.dart';

class ProductListFab extends StatelessWidget {
  const ProductListFab({Key? key}) : super(key: key);

  ProductListCtrl get ct => x1ProductListCtrl;
  ProductListData get dt => x1ProductListData.st;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => nav.to(Routes.productInput),
    );
  }
}
