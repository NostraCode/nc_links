part of '../_index.dart';

class ProductListAppbar extends StatelessWidget {
  const ProductListAppbar({Key? key}) : super(key: key);

  ProductListCtrl get ct => Ctrl.productList;
  ProductListData get dt => Data.productList.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.title)),
    );
  }
}
