part of '_index.dart';

final x1XauthData = RM.inject<XauthData>(
  () => XauthData(),
  debugPrintWhenNotifiedPreMessage: 'XauthData',
);

class XauthData {
  late StreamSubscription<User?> subsAuth;

  final rmUser = RM.inject<User?>(
    () => null,
    autoDisposeWhenNotUsed: false,
  );
}
