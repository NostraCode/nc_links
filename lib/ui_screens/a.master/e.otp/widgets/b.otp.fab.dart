part of '../_index.dart';

class OtpFab extends StatelessWidget {
  const OtpFab({Key? key}) : super(key: key);

  OtpCtrl get ct => Ctrl.otp;
  OtpData get dt => Data.otp.st;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => ct.action(),
    );
  }
}
