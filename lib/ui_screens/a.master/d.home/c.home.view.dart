part of '_index.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  HomeCtrl get ct => x1HomexCtrl;
  HomeData get dt => x1HomeData.st;

  List<List<dynamic>> get items {
    return [
      ['Chat', const HomeChat()],
      ['Misc', const HomeMisc()],
      ['Injection', const HomeInj()],
      ['Firebase (not for windows)', const HomeFirebase()],
      ['Rest API', const HomeRestapi()],
      ['Training', const HomeTraining()],
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
                  widget: items[index][1],
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
