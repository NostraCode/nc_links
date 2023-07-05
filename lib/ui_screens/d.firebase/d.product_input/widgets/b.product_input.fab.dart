part of '../_index.dart';

class ProductInputFab extends ReactiveStatelessWidget {
  const ProductInputFab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: FloatingActionButton(
        child: const Icon(Icons.upload),
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
                onPressed: () => _ct.create(),
                child: const Text("OK"),
              ),
            ],
          ),
          postponeToNextFrame: true,
        ),
      ),
    );
  }
}
