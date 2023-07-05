part of '../_index.dart';

class PopupCharlie extends StatelessWidget {
  const PopupCharlie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Title'),
      content: const Text('content of message'),
      actions: [
        TextButton(
          child: const Text('Cancel'),
          onPressed: () => nav.back(),
        ),
        TextButton(
          child: const Text('YES'),
          onPressed: () => nav.back(),
        ),
      ],
    );
  }
}
