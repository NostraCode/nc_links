part of '_index.dart';

final x1XproductData = RM.inject<XproductData>(
  () => XproductData(),
  debugPrintWhenNotifiedPreMessage: 'XproductData',
);

class XproductData {
  final appCheck = FirebaseAppCheck.instance;

  //* settings ---- ---- ---- ---- ---- ---- ---- ---- ----

  final colId = 'products';

  final limit = 4;

  //* product ---- ---- ---- ---- ---- ---- ---- ---- ----

  late StreamSubscription subsItem;

  final rmProductFuture = RM.injectFuture<Productx?>(() => Future.value(null));

  final rmProductStream = RM.injectStream<Productx?>(() => Stream.value(null));

  final rmSelectedId = RM.inject<String>(
    () => '',
    sideEffects: SideEffects(
      onSetState: (snap) {
        if (snap.data != '') {
          x1XproductServ.readProduct();
          x1XproductServ.listenProduct();
        }
      },
    ),
  );

  //* products ---- ---- ---- ---- ---- ---- ---- ---- ---- ----

  late StreamSubscription subsItems;

  final rmIsFirstEvent = true.inj();

  final rmIsEnd = false.inj();

  final rmProductList = RM.inject<List<Productx>>(() => []);

  final rmLoadMore = RM.injectFuture<List<Productx>>(
    () => Future.value([]),
    sideEffects: SideEffects(
      initState: () => x1XproductServ.initProducts(),
      onSetState: (snap) {
        if (snap.hasData) {
          final moreProducts = snap.state.whereType<Productx>().toList();
          x1XproductServ.addToList(moreProducts);
        }
      },
    ),
  );
}
