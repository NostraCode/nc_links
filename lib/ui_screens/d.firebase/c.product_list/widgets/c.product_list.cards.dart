part of '../_index.dart';

class ProductListCards extends StatelessWidget {
  const ProductListCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () => _ct.refresh(),
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
            for (var item in _dt.rxProductList.st) ProductListCard(product: item),
            const ProductListLoadmore(),
          ],
        ),
      ),
    );
  }
}
