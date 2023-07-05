part of '../_index.dart';

class OtpAppbar extends StatelessWidget {
  const OtpAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
