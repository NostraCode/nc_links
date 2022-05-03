part of '_index.dart';

class RestListView extends StatelessWidget {
  const RestListView({Key? key}) : super(key: key);

  RestListCtrl get ct => x1RestListCtrl;
  RestListData get dt => x1RestListData.st;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: RestListAppbar(),
      ),
      floatingActionButton: const RestListFab(),
      body: Child2(
        child1: const RestListCards(),
        child2: const RestListLoadmore(),
        builder: (child1, child2) {
          return OnBuilder.data(
            listenTo: dt.rmUserList,
            builder: (data) => dt.rmUserList.st.isNotEmpty ? child1 : child2,
          );
        },
      ),
    );
  }
}
