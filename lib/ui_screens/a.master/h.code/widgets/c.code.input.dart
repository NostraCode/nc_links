part of '../_index.dart';

class CodeInput extends StatelessWidget {
  const CodeInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: _dt.rxFormCode,
      builder: () {
        // logx.e(_dt.rxAutoSmsCode.st.toString());

        return PlatformType.isWeb
            ? OnReactive(
                () => TextField(
                  // controller: _dt.rxCode.st.controller,
                  controller: _dt.rxCode.st.controllerWithInitialText(_dt.rxAutoSmsCode.st ?? ''),
                  focusNode: _dt.rxCode.st.focusNode,
                  keyboardType: TextInputType.number,
                  onEditingComplete: () => _dt.rxCode.st.focusNode.unfocus(),
                  enabled: _dt.rxConfirmationResult.st != null,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    labelText: 'Code',
                    errorText: _dt.rxCode.error,
                  ),
                ),
              )
            : OnReactive(
                () => TextField(
                  // controller: _dt.rxCode.st.controller,
                  controller: _dt.rxCode.st.controllerWithInitialText(_dt.rxAutoSmsCode.st ?? ''),
                  focusNode: _dt.rxCode.st.focusNode,
                  keyboardType: TextInputType.number,
                  onEditingComplete: () => _dt.rxCode.st.focusNode.unfocus(),
                  enabled: _dt.rxPhoneAuthCredential.st != null || _dt.rxVerificationId.st != null,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    labelText: 'Code',
                    errorText: _dt.rxCode.error,
                  ),
                ),
              );
      },
    );
  }
}
