part of '_index.dart';

final x1ProfileData = RM.inject<ProfileData>(
  () => ProfileData(),
  debugPrintWhenNotifiedPreMessage: 'ProfilexData',
  sideEffects: SideEffects(initState: () => x1ProfileCtrl.init()),
);

class ProfileData {
  final title = 'Profile';

  final rmInt = 0.inj();
}
