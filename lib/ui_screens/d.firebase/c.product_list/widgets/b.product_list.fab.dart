part of '../_index.dart';

class ProductListFab extends StatelessWidget {
  const ProductListFab({Key? key}) : super(key: key);

  ProductListCtrl get ct => Ctrl.productList;
  ProductListData get dt => Data.productList.st;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => nav.to(Routes.productInput),
    );
  }
}
