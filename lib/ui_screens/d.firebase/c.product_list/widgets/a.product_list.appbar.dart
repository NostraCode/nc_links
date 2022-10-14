part of '../_index.dart';

class ProductListAppbar extends StatelessWidget {
  const ProductListAppbar({Key? key}) : super(key: key);

  ProductListCtrl get ct => x1ProductListCtrl;
  ProductListData get dt => x1ProductListData.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.title)),
    );
  }
}
