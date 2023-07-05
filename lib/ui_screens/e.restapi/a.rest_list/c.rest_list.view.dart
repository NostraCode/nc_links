part of '_index.dart';

class RestListView extends StatelessWidget {
  const RestListView({Key? key}) : super(key: key);

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
            listenTo: _dt.rxUserList,
            builder: (data) => _dt.rxUserList.st.isNotEmpty ? child1 : child2,
          );
        },
      ),
    );
  }
}
