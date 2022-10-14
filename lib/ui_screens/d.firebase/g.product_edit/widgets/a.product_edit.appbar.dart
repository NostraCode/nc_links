part of '../_index.dart';

class ProductEditAppbar extends StatelessWidget {
  const ProductEditAppbar({Key? key}) : super(key: key);

  ProductEditCtrl get ct => x1ProductEditCtrl;
  ProductEditData get dt => x1ProductEditData.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.title)),
    );
  }
}
