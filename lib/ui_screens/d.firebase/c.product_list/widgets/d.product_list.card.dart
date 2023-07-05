part of '../_index.dart';

class ProductListCard extends StatelessWidget {
  final Product product;
  const ProductListCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: OnReactive(
        () => ListTile(
          selected: product.id == _dt.rxSelectedId.st,
          dense: true,
          leading: Icon(
            Icons.image,
            color: product.images.isEmpty ? themeRM.activeTheme().iconTheme.color?.withOpacity(0.1) : null,
          ),
          title: Text(product.name),
          onTap: () => _ct.select(product.id),
        ),
      ),
    );
  }
}
