part of '../_index.dart';

class RestListLoadmore extends StatelessWidget {
  const RestListLoadmore({Key? key}) : super(key: key);

  RestListCtrl get ct => x1RestListCtrl;
  RestListData get dt => x1RestListData.st;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 80,
        child: Center(
          child: OnBuilder<List<Userx>>.all(
            listenToMany: [dt.rxUserList, dt.rxUserLoader],
            onWaiting: () => const CircularProgressIndicator(),
            onError: (_, __) => const Text('error'),
            onData: (_) => dt.rxIsEnd.st
                ? Text(dt.rxUserList.st.isEmpty ? 'empty' : 'end of list.')
                : OutlinedButton(
                    child: const Text('load more'),
                    onPressed: () => ct.loadMore(),
                  ),
          ),
        ),
      ),
    );
  }
}
