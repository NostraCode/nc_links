part of '../_index.dart';

class OtpCode extends StatelessWidget {
  const OtpCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: _dt.rxFormCode,
      builder: () {
        return PlatformType.isWeb
            ? OnReactive(
                () => TextField(
                  controller: _dt.rxCode.controller,
                  focusNode: _dt.rxCode.focusNode,
                  keyboardType: TextInputType.number,
                  onEditingComplete: () => _dt.rxCode.focusNode.unfocus(),
                  enabled: _dt.confirmationResult.st != null,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    labelText: 'Code',
                    hintText: 'insert code',
                    errorText: _dt.rxCode.error,
                  ),
                ),
              )
            : OnBuilder<PhoneAuthCredential?>(
                listenTo: _dt.phoneAuthCredential,
                builder: () => TextField(
                  controller: _dt.rxCode.controller,
                  focusNode: _dt.rxCode.focusNode,
                  keyboardType: TextInputType.number,
                  onEditingComplete: () => _dt.rxCode.focusNode.unfocus(),
                  enabled: _dt.phoneAuthCredential.st != null || _dt.verificationId.st != null,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    labelText: 'Code',
                    hintText: 'insert code',
                    errorText: _dt.rxCode.error,
                  ),
                ),
                sideEffects: SideEffects.onData(
                  (data) => _dt.rxCode.controller.text = data!.smsCode ?? '',
                ),
              );
      },
    );
  }
}
