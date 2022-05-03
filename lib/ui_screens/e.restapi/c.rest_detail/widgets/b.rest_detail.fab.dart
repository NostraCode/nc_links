part of '../_index.dart';

class RestDetailFab extends StatelessWidget {
  const RestDetailFab({Key? key}) : super(key: key);

  RestDetailCtrl get ct => x1RestDetailCtrl;
  RestDetailData get dt => x1RestDetailData.st;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.edit),
      onPressed: () => nav.to(Routes.restEdit),
    );
  }
}
