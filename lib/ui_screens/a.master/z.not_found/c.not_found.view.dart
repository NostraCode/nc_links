part of '_index.dart';

class NotFoundView extends StatelessWidget {
  const NotFoundView({Key? key, required this.routeData}) : super(key: key);

  final RouteData routeData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: NotFoundAppbar(),
      ),
      // floatingActionButton: const NotFoundFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('"${routeData.location}" is not found.'),
            const SizedBoxH(20),
            ElevatedButton(
              child: const Text('back'),
              onPressed: () => nav.back(),
            ),
            // const NotFoundCharlie(),
            // const NotFoundDelta(),
            // const NotFoundEcho(),
          ],
        ),
      ),
    );
  }
}
