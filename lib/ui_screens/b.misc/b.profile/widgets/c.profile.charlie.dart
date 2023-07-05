part of '../_index.dart';

class ProfileC extends StatelessWidget {
  const ProfileC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnReactive(() => Text('${_dt.rxInt.st}'));
  }
}
