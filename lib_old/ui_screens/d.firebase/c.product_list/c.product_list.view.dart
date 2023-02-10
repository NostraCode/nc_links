part of '_index.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({Key? key}) : super(key: key);

  ProductListCtrl get ct => Ctrl.productList;
  ProductListData get dt => Data.productList.st;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: ProductListAppbar(),
      ),
      floatingActionButton: const ProductListFab(),
      body: OnReactive(
        () => Center(
          child: Child2(
            child1: const ProductListCards(),
            child2: const CircularProgressIndicator(),
            builder: (child1, child2) {
              return dt.rxProductList.st.isNotEmpty
                  ? child1
                  : dt.rxLoadMore.rebuild.onOrElse(
                      onWaiting: () => child2,
                      orElse: (data) => const ProductListLoadmore(),
                    );
            },
          ),
        ),
      ),
    );
  }
}
