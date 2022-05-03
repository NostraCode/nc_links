part of '../_index.dart';

class CobaSatuAppbar extends StatelessWidget {
  const CobaSatuAppbar({Key? key}) : super(key: key);

  CobaSatuCtrl get ct => x1CobaSatuCtrl;
  CobaSatuData get dt => x1CobaSatuData.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.rmTitle.st)),
    );
  }
}
