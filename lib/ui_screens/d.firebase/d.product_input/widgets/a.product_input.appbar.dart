part of '../_index.dart';

class ProductInputAppbar extends StatelessWidget {
  const ProductInputAppbar({Key? key}) : super(key: key);

  ProductInputCtrl get ct => Ctrl.productInput;
  ProductInputData get dt => Data.productInput.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.title)),
    );
  }
}
