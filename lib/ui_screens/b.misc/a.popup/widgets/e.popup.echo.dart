part of '../_index.dart';

class PopupEcho extends ReactiveStatelessWidget {
  const PopupEcho({Key? key}) : super(key: key);

  PopupCtrl get ct => x1PopupCtrl;
  PopupData get dt => x1PopupData.st;

  @override
  Widget build(BuildContext context) {
    return CupertinoActionSheet(
      title: const Text('Title'),
      message: const Text('Message'),
      actions: <CupertinoActionSheetAction>[
        CupertinoActionSheetAction(
          onPressed: () {},
          isDefaultAction: true,
          child: const Text('Action One'),
          // isDestructiveAction: true,
        ),
        CupertinoActionSheetAction(
          onPressed: () {},
          // isDefaultAction: true,
          isDestructiveAction: true,
          child: const Text('Action Two'),
        ),
      ],
      cancelButton: CupertinoActionSheetAction(
        child: const Text('Cancel'),
        onPressed: () => RM.navigate.back(),
        // isDefaultAction: true,
        // isDestructiveAction: true,
      ),
    );
  }
}
