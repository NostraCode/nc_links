part of '_index.dart';

final x1ProfileData = RM.inject<ProfileData>(
  () => ProfileData(),
  debugPrintWhenNotifiedPreMessage: '',
  sideEffects: SideEffects(initState: () => x1ProfileCtrl.init()),
);

class ProfileData {
  final title = 'Profile';

  final rxInt = 0.inj();
}
