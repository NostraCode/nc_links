part of '../_index.dart';

class NotFoundCharlie extends StatelessWidget {
  const NotFoundCharlie({Key? key}) : super(key: key);

  NotFoundCtrl get ct => Ctrl.notFound;
  NotFoundData get dt => Data.notFound.st;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(Random().nextInt(100).toString()),
        OnReactive(() => Text('${dt.rxInt.st}')),
      ],
    );
  }
}
