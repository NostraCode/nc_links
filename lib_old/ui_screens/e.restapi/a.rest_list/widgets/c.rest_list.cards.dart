part of '../_index.dart';

class RestListCards extends StatelessWidget {
  const RestListCards({Key? key}) : super(key: key);

  RestListCtrl get ct => Ctrl.restList;
  RestListData get dt => Data.restList.st;

  @override
  Widget build(BuildContext context) {
    return Child2(
      child1: const RestListPullText(),
      child2: const RestListLoadmore(),
      builder: (child1, child2) {
        return RefreshIndicator(
          onRefresh: () => ct.refresh(),
          child: OnBuilder.data(
            listenToMany: [dt.rxUserList, dt.rxUserLoader],
            builder: (_) => ListView(
              padding: const EdgeInsets.all(2),
              children: [
                child1,
                for (var item in dt.rxUserList.st) RestListCard(user: item),
                child2,
              ],
            ),
          ),
        );
      },
    );
  }
}
