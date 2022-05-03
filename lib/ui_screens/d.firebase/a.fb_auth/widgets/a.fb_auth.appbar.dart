part of '../_index.dart';

class FbAuthAppbar extends StatelessWidget {
  const FbAuthAppbar({Key? key}) : super(key: key);

  FbAuthCtrl get ct => x1FbAuthCtrl;
  FbAuthData get dt => x1FbAuthData.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.title)),
    );
  }
}
