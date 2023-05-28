part of '_index.dart';

final x1FbAppCheck = RM.inject<FbAppCheck>(() => FbAppCheck());

class FbAppCheck {
  final instance = FirebaseAppCheck.instance;
}
