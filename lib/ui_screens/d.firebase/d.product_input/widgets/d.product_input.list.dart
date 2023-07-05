part of '../_index.dart';

class ProductInputList extends StatelessWidget {
  const ProductInputList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnReactive(
      () => AnimatedList(
        key: _dt.listKey,
        initialItemCount: _dt.products.st.length,
        itemBuilder: (context, index, animation) {
          return ProductInputTile(
            product: _dt.products.st[index],
            animation: animation,
          );
        },
      ),
    );
  }
}
