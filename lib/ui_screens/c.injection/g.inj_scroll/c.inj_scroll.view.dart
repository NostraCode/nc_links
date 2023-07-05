part of '_index.dart';

class InjScrollView extends ReactiveStatelessWidget {
  const InjScrollView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: InjScrollAppbar(),
      ),
      floatingActionButton: _dt.rxShowFab.st ? const InjScrollFab() : null,
      body: ListView(
        padding: const EdgeInsets.all(5),
        controller: _dt.fmScroll.controller,
        children: [
          for (var i = 0; i < 10; i++)
            Card(
              child: Container(
                height: 80,
                margin: const EdgeInsets.all(5),
                // color: Colors.grey,
              ),
            )
        ],
      ),
    );
  }
}
