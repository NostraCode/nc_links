part of '_index.dart';

final x1ChatLoginData = RM.inject<ChatLoginData>(
  () => ChatLoginData(),
  debugPrintWhenNotifiedPreMessage: '',
  sideEffects: SideEffects(initState: () => x1ChatLoginCtrl.init()),
);

class ChatLoginData {
  final rxTitle = 'ChatLogin'.inj();

  final rxInt = 0.inj();

  final rxUser = x1AuthProv.st.rxUser;
}
