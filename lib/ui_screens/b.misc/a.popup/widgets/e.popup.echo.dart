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
          child: const Text('Action One'),
          onPressed: () {},
          isDefaultAction: true,
          // isDestructiveAction: true,
        ),
        CupertinoActionSheetAction(
          child: const Text('Action Two'),
          onPressed: () {},
          // isDefaultAction: true,
          isDestructiveAction: true,
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
