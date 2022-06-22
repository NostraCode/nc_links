part of '_index.dart';

final x1ChatDetailData = RM.inject<ChatDetailData>(
  () => ChatDetailData(),
  debugPrintWhenNotifiedPreMessage: '',
  sideEffects: SideEffects(initState: () => x1ChatDetailCtrl.init()),
);

class ChatDetailData {
  final rxTitle = 'ChatDetail'.inj();

  final rxInt = 0.inj();
}
