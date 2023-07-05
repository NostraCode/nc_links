part of '../_index.dart';

class AnalyticsFab extends StatelessWidget {
  const AnalyticsFab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => _ct.action(),
    );
  }
}
