part of '../_index.dart';

class InjPersistDelta extends StatelessWidget {
  const InjPersistDelta({Key? key}) : super(key: key);

  InjPersistCtrl get ct => Ctrl.injPersist;
  InjPersistData get dt => Data.injPersist.st;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
