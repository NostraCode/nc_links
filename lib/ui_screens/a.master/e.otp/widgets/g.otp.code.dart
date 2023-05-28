part of '../_index.dart';

class OtpCode extends StatelessWidget {
  const OtpCode({Key? key}) : super(key: key);

  OtpCtrl get ct => Ctrl.otp;
  OtpData get dt => Data.otp.st;

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: dt.rxFormCode,
      builder: () {
        return PlatformType.isWeb
            ? OnReactive(
                () => TextField(
                  controller: dt.rxCode.controller,
                  focusNode: dt.rxCode.focusNode,
                  keyboardType: TextInputType.number,
                  onEditingComplete: () => dt.rxCode.focusNode.unfocus(),
                  enabled: dt.confirmationResult.st != null,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    labelText: 'Code',
                    hintText: 'insert OTP code',
                    errorText: dt.rxCode.error,
                  ),
                ),
              )
            : OnBuilder<PhoneAuthCredential?>(
                listenTo: dt.phoneAuthCredential,
                builder: () => TextField(
                  controller: dt.rxCode.controller,
                  focusNode: dt.rxCode.focusNode,
                  keyboardType: TextInputType.number,
                  onEditingComplete: () => dt.rxCode.focusNode.unfocus(),
                  enabled: dt.phoneAuthCredential.st != null || dt.verificationId.st != null,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    labelText: 'Code',
                    hintText: 'insert OTP code',
                    errorText: dt.rxCode.error,
                  ),
                ),
                sideEffects: SideEffects.onData(
                  (data) => dt.rxCode.controller.text = data!.smsCode ?? '',
                ),
              );
      },
    );
  }
}
