part of '_index.dart';

class ProductProv {
  final appCheck = FirebaseAppCheck.instance;

  //* settings ---- ---- ---- ---- ---- ---- ---- ---- ----

  final colId = 'products';

  final limit = 4;

  //* product ---- ---- ---- ---- ---- ---- ---- ---- ----

  late StreamSubscription subsItem;

  final rxProductFuture = RM.injectFuture<Product?>(() => Future.value(null));

  final rxProductStream = RM.injectStream<Product?>(() => Stream.value(null));

  final rxSelectedId = RM.inject<String>(
    () => '',
    sideEffects: SideEffects(
      onSetState: (snap) {
        if (snap.data != '') {
          Serv.product.readProduct();
          Serv.product.listenProduct();
        }
      },
    ),
  );

  //* products ---- ---- ---- ---- ---- ---- ---- ---- ---- ----

  late StreamSubscription subsItems;

  final rxIsFirstEvent = true.inj();

  final rxIsEnd = false.inj();

  final rxProductList = RM.inject<List<Product>>(() => []);

  final rxLoadMore = RM.injectFuture<List<Product>>(
    () => Future.value([]),
    sideEffects: SideEffects(
      initState: () => Serv.product.initProducts(),
      onSetState: (snap) {
        if (snap.hasData) {
          final moreProducts = snap.state.whereType<Product>().toList();
          Serv.product.addToList(moreProducts);
        }
      },
    ),
  );
}
