part of '_index.dart';

class RestDetailView extends StatelessWidget {
  const RestDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: RestDetailAppbar(),
      ),
      floatingActionButton: const RestDetailFab(),
      body: Center(
        child: OnBuilder<Userx?>.all(
          listenTo: _dt.rxUserFuture,
          onWaiting: () => const CircularProgressIndicator(),
          onError: (e, s) => const Text('error'),
          onData: (data) {
            return data == null
                ? const Text('null')
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('${data.id}'),
                      Text(data.name),
                      Text(data.email),
                      Text(data.gender),
                      Text(data.status),
                    ],
                  );
          },
        ),
      ),
    );
  }
}
