part of '../_index.dart';

class ProductEditFab extends StatelessWidget {
  const ProductEditFab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.save),
      onPressed: () => RM.navigate.toCupertinoDialog(
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
              isDefaultAction: true,
              onPressed: () => _ct.update(),
              child: const Text("OK"),
            ),
          ],
        ),
        postponeToNextFrame: true,
      ),
    );
  }
}
