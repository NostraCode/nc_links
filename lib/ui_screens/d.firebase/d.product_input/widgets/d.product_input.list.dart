part of '../_index.dart';

class ProductInputList extends StatelessWidget {
  const ProductInputList({Key? key}) : super(key: key);

  ProductInputCtrl get ct => Ctrl.productInput;
  ProductInputData get dt => Data.productInput.st;

  @override
  Widget build(BuildContext context) {
    return OnReactive(
      () => AnimatedList(
        key: dt.listKey,
        initialItemCount: dt.products.st.length,
        itemBuilder: (context, index, animation) {
          return ProductInputTile(
            product: dt.products.st[index],
            animation: animation,
          );
        },
      ),
    );
  }
}
