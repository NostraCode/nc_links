part of '../_index.dart';

class RestListCards extends StatelessWidget {
  const RestListCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Child2(
      child1: const RestListPullText(),
      child2: const RestListLoadmore(),
      builder: (child1, child2) {
        return RefreshIndicator(
          onRefresh: () => _ct.refresh(),
          child: OnBuilder.data(
            listenToMany: [_dt.rxUserList, _dt.rxUserLoader],
            builder: (_) => ListView(
              padding: const EdgeInsets.all(2),
              children: [
                child1,
                for (var item in _dt.rxUserList.st) RestListCard(user: item),
                child2,
              ],
            ),
          ),
        );
      },
    );
  }
}
