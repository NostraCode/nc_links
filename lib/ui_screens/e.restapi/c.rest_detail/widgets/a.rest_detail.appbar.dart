part of '../_index.dart';

class RestDetailAppbar extends StatelessWidget {
  const RestDetailAppbar({Key? key}) : super(key: key);

  RestDetailCtrl get ct => x1RestDetailCtrl;
  RestDetailData get dt => x1RestDetailData.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.title)),
      actions: [
        ButtonAppbarX(
          iconDatax: Icons.delete,
          funcx: () => RM.navigate.toCupertinoDialog(
            AlertDialogX(
              title: 'Confirxation',
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
                  child: const Text("DELETE"),
                  isDestructiveAction: true,
                  isDefaultAction: true,
                  onPressed: () {
                    RM.navigate.back();
                    ct.delete();
                  },
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
