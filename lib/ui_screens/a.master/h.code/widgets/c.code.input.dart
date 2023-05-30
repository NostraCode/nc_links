part of '../_index.dart';

class CodeInput extends StatelessWidget {
  const CodeInput({Key? key}) : super(key: key);

  CodeCtrl get ct => Ctrl.code;
  CodeData get dt => Data.code.st;

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: dt.rxFormCode,
      builder: () {
        // logx.e(dt.rxAutoSmsCode.st.toString());

        return PlatformType.isWeb
            ? OnReactive(
                () => TextField(
                  // controller: dt.rxCode.st.controller,
                  controller: dt.rxCode.st.controllerWithInitialText(dt.rxAutoSmsCode.st ?? ''),
                  focusNode: dt.rxCode.st.focusNode,
                  keyboardType: TextInputType.number,
                  onEditingComplete: () => dt.rxCode.st.focusNode.unfocus(),
                  enabled: dt.rxConfirmationResult.st != null,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    labelText: 'Code',
                    errorText: dt.rxCode.error,
                  ),
                ),
              )
            : OnReactive(
                () => TextField(
                  // controller: dt.rxCode.st.controller,
                  controller: dt.rxCode.st.controllerWithInitialText(dt.rxAutoSmsCode.st ?? ''),
                  focusNode: dt.rxCode.st.focusNode,
                  keyboardType: TextInputType.number,
                  onEditingComplete: () => dt.rxCode.st.focusNode.unfocus(),
                  enabled: dt.rxPhoneAuthCredential.st != null || dt.rxVerificationId.st != null,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    labelText: 'Code',
                    errorText: dt.rxCode.error,
                  ),
                ),
              );
      },
    );
  }
}
