part of '../_index.dart';

class RestListFab extends StatelessWidget {
  const RestListFab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => nav.to(Routes.restInput),
    );
  }
}
