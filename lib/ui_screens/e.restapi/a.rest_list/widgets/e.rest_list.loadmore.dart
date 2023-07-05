part of '../_index.dart';

class RestListLoadmore extends StatelessWidget {
  const RestListLoadmore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 80,
        child: Center(
          child: OnBuilder<List<Userx>>.all(
            listenToMany: [_dt.rxUserList, _dt.rxUserLoader],
            onWaiting: () => const CircularProgressIndicator(),
            onError: (_, __) => const Text('error'),
            onData: (_) => _dt.rxIsEnd.st
                ? Text(_dt.rxUserList.st.isEmpty ? 'empty' : 'end of list.')
                : OutlinedButton(
                    child: const Text('load more'),
                    onPressed: () => _ct.loadMore(),
                  ),
          ),
        ),
      ),
    );
  }
}
