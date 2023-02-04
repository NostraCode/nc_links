part of '../_index.dart';

class RestInputAppbar extends StatelessWidget {
  const RestInputAppbar({Key? key}) : super(key: key);

  RestInputCtrl get ct => Ctrl.restInput;
  RestInputData get dt => Data.restInput.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.title)),
    );
  }
}
