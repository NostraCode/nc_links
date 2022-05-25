part of '../_index.dart';

class ProductEditFab extends StatelessWidget {
  const ProductEditFab({Key? key}) : super(key: key);

  ProductEditCtrl get ct => x1ProductEditCtrl;
  ProductEditData get dt => x1ProductEditData.st;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.save),
      onPressed: () => RM.navigate.toCupertinoDialog(
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
              child: const Text("OK"),
              isDefaultAction: true,
              onPressed: () => ct.update(),
            ),
          ],
        ),
        postponeToNextFrame: true,
      ),
    );
  }
}
