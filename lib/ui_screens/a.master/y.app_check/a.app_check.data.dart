part of '_index.dart';

class AppCheckData {
  final rxTitle = 'AppCheck'.inj();

  final rxInt = 0.inj();

  final appCheck = x1FbAppCheck.st.instance;

  final rxAppCheck = RM.injectStream<String?>(
    () => x1FbAppCheck.st.instance.onTokenChange,
    sideEffects: SideEffects.onData(
      (data) => Ctrl.appCheck.setEventToken(data),
    ),
  );

  final rxMessage = RM.inject<String>(
    () => '',
  );

  final rxEventToken = RM.inject<String>(
    () => 'not yet',
  );
}
