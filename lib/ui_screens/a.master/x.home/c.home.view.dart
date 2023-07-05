part of '_index.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  List<List<dynamic>> get items {
    return [
      ['Misc', '', const HomeMisc()],
      ['Injection', '', const HomeInj()],
      ['Firebase', '[disabled on windows or linux]', const HomeFirebase()],
      ['Rest API', '', const HomeRestapi()],
      ['Training', '', const HomeTraining()],
      ['Chat', '[unfinished]', const HomeChat()],
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: HomeAppbar(),
      ),
      // floatingActionButton: const HomeFab(),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(3),
              itemCount: items.length,
              itemBuilder: (context, index) {
                return HomePanel(
                  index: index,
                  title: items[index][0],
                  subtitle: items[index][1],
                  widget: items[index][2],
                );
              },
            ),
          ),
          const ConnNotification(),
        ],
      ),
    );
  }
}
