part of '../_index.dart';

class ProductListCard extends StatelessWidget {
  final Productx product;
  const ProductListCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  ProductListCtrl get ct => x1ProductListCtrl;
  ProductListData get dt => x1ProductListData.st;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: OnReactive(
        () => ListTile(
          selected: product.id == dt.rmSelectedId.st,
          dense: true,
          leading: Icon(
            Icons.image,
            color: product.images.isEmpty
                ? themeRM.activeTheme().iconTheme.color?.withOpacity(0.1)
                : null,
          ),
          title: Text(product.name),
          onTap: () => ct.select(product.id),
        ),
      ),
    );
  }
}
