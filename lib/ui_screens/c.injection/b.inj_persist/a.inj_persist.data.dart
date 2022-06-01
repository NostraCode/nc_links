part of '_index.dart';

final x1InjPersistData = RM.inject<InjPersistData>(
  () => InjPersistData(),
  debugPrintWhenNotifiedPreMessage: '',
  sideEffects: SideEffects(initState: () => x1InjPersistCtrl.init()),
);

class InjPersistData {
  final rxTitle = 'InjPersist'.inj();

  final rxInt = 0.inj();

  final rxIntPersist = RM.inject<int>(
    () => 0,
    persist: () => PersistState(
      key: 'rxIntPersist',
      throttleDelay: 500,
      shouldRecreateTheState: false,
    ),
  );

  final rxProductPersist = RM.inject<Productx>(
    () => Productx(),
    persist: () => PersistState(
      key: 'rxProductPersist',
      throttleDelay: 500,
      shouldRecreateTheState: false,
      toJson: (s) => s.toJson(),
      fromJson: (j) => Productx.fromJson(j),
    ),
  );
}
