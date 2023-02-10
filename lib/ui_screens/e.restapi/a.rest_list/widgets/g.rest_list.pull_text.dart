part of '../_index.dart';

class RestListPullText extends StatelessWidget {
  const RestListPullText({Key? key}) : super(key: key);

  RestListCtrl get ct => Ctrl.restList;
  RestListData get dt => Data.restList.st;

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 25,
      child: Center(
        child: Text(
          'pull to refresh',
          textScaleFactor: 0.8,
        ),
      ),
    );
  }
}
