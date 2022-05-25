part of '../_index.dart';

class ProductListCards extends StatelessWidget {
  const ProductListCards({Key? key}) : super(key: key);

  ProductListCtrl get ct => x1ProductListCtrl;
  ProductListData get dt => x1ProductListData.st;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () => ct.refresh(),
      child: OnReactive(
        () => ListView(
          children: [
            const SizedBox(
              height: 25,
              child: Center(
                child: Text(
                  'pull to refresh',
                  textScaleFactor: 0.8,
                ),
              ),
            ),
            for (var item in dt.rxProductList.st)
              ProductListCard(product: item),
            const ProductListLoadmore(),
          ],
        ),
      ),
    );
  }
}
