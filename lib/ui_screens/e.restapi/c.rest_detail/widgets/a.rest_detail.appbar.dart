part of '../_index.dart';

class RestDetailAppbar extends StatelessWidget {
  const RestDetailAppbar({Key? key}) : super(key: key);

  RestDetailCtrl get ct => Ctrl.restDetail;
  RestDetailData get dt => Data.restDetail.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.title)),
      actions: [
        ButtonAppbarX(
          iconDatax: Icons.delete,
          funcx: () => RM.navigate.toCupertinoDialog(
            AlertDialogX(
              title: 'Confirmation',
              message: 'are you sure?',
              widgets: [
                CupertinoDialogAction(
                  child: const Text("Cancel"),
                  // textStyle: TextStyle(
                  //   color: Get.theme.textTheme.headline6?.color,
                  // ),
                  onPressed: () => RM.navigate.back(),
                ),
                CupertinoDialogAction(
                  isDestructiveAction: true,
                  isDefaultAction: true,
                  onPressed: () {
                    RM.navigate.back();
                    ct.delete();
                  },
                  child: const Text("DELETE"),
                ),
              ],
            ),
            postponeToNextFrame: true,
          ),
        )
      ],
    );
  }
}
