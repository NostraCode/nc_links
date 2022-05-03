part of '../_index.dart';

class PopupCharlie extends StatelessWidget {
  const PopupCharlie({Key? key}) : super(key: key);

  PopupCtrl get ct => x1PopupCtrl;
  PopupData get dt => x1PopupData.st;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Title'),
      content: const Text('content of message'),
      actions: [
        TextButton(
          child: const Text('Cancel'),
          onPressed: () => RM.navigate.back(),
        ),
        TextButton(
          child: const Text('YES'),
          onPressed: () => RM.navigate.back(),
        ),
      ],
    );
  }
}
