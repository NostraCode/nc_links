part of '../_index.dart';

class PopupGolf extends ReactiveStatelessWidget {
  const PopupGolf({Key? key}) : super(key: key);

  PopupCtrl get ct => Ctrl.popup;
  PopupData get dt => Data.popup.st;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      color: Colors.grey.shade800,
      child: Center(
        child: OutlinedButton(
          onPressed: () => nav.back(),
          child: const Text("close"),
        ),
      ),
    );
  }
}
