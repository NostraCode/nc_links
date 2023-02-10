part of '_index.dart';

final x1FbDatabase = RM.inject<FbDatabase>(() => FbDatabase());

class FbDatabase {
  final instance = FirebaseDatabase.instance;

  Future<void> create(String path, Object value) async {
    try {
      final ref = instance.ref(path);
      await ref.set(value);
    } catch (e) {
      Fun.handleException(e);
    }
  }

  Future<void> update(String path, Map<String, Object?> value) async {
    try {
      final ref = instance.ref(path);
      await ref.update(value);
    } catch (e) {
      Fun.handleException(e);
    }
  }

  Future<void> delete(String path) async {
    try {
      final ref = instance.ref("users");
      await ref.remove();
    } catch (e) {
      Fun.handleException(e);
    }
  }

  Future<void> read(String path) async {
    try {
      final ref = FirebaseDatabase.instance.ref();
      final snapshot = await ref.child(path).get();
      if (snapshot.exists) {
        logx.w(snapshot.value.toString());
      } else {
        logx.w('No data available.');
      }
    } catch (e) {
      Fun.handleException(e);
    }
  }

  Stream<DatabaseEvent> listen(
    String path, {
    String? orderByChild,
    Object? startAt,
    Object? equalTo,
  }) {
    dynamic ref;
    if (orderByChild != null && startAt != null) {
      ref = FirebaseDatabase.instance
          .ref(path)
          .orderByChild(orderByChild)
          .startAt(startAt);
    } else if (orderByChild != null && equalTo != null) {
      ref = FirebaseDatabase.instance
          .ref(path)
          .orderByChild(orderByChild)
          .equalTo(equalTo);
    } else if (orderByChild != null) {
      ref = FirebaseDatabase.instance.ref(path).orderByChild(orderByChild);
    } else {
      ref = FirebaseDatabase.instance.ref(path);
    }
    return ref.onValue;
  }

  Stream<DatabaseEvent> listenx(
    String path,
    String orderByChild,
  ) {
    return FirebaseDatabase.instance
        .ref(path)
        .orderByChild(orderByChild)
        .onValue;
  }
}
