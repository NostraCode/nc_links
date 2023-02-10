part of '_index.dart';

class AlertDialogX extends StatelessWidget {
  final String title;
  final String message;
  final List<Widget> widgets;
  const AlertDialogX({
    Key? key,
    required this.title,
    required this.message,
    required this.widgets,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text(title),
      content: Container(
        padding: const EdgeInsets.all(20),
        child: Text(message),
      ),
      actions: widgets,
    );
  }
}
