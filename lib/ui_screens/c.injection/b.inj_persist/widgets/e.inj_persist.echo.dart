part of '../_index.dart';

class InjPersistEcho extends StatelessWidget {
  const InjPersistEcho({Key? key}) : super(key: key);

  InjPersistCtrl get ct => x1InjPersistCtrl;
  InjPersistData get dt => x1InjPersistData.st;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
