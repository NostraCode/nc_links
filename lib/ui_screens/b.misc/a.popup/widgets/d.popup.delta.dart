part of '../_index.dart';

class PopupDelta extends StatelessWidget {
  const PopupDelta({Key? key}) : super(key: key);

  PopupCtrl get ct => Ctrl.popup;
  PopupData get dt => Data.popup.st;

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: const Text('title'),
      content: Container(
        padding: const EdgeInsets.all(20),
        child: const Text('content of message'),
      ),
      actions: [
        CupertinoDialogAction(
          child: const Text("Cancel"),
          // textStyle: TextStyle(
          //   color: Get.theme.textTheme.headline6?.color,
          // ),
          onPressed: () => nav.back(),
        ),
        CupertinoDialogAction(
          isDefaultAction: true,
          onPressed: () => nav.back(),
          child: const Text("OK"),
        ),
      ],
    );
  }
}
