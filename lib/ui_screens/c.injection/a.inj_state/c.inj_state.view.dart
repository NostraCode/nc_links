part of '_index.dart';

class InjStateView extends StatelessWidget {
  const InjStateView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnReactive(
      () => Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(56),
          child: InjStateAppbar(),
        ),
        // floatingActionButton: const State5Fab(),
        bottomNavigationBar: SizedBox(
          height: 48,
          child: Column(
            children: [
              OnTabPageViewBuilder(
                builder: (index) => TabBar(
                  controller: _dt.rxTab.tabController,
                  isScrollable: true,
                  indicatorColor: Colors.transparent,
                  unselectedLabelColor: Colors.grey.withOpacity(0.5),
                  tabs: const [
                    Tab(text: 'widgets'),
                    Tab(text: 'stream'),
                    Tab(text: 'future'),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: OnTabPageViewBuilder(
          builder: (index) => PageView(
            controller: _dt.rxTab.pageController,
            children: const [
              InjStateWidgets(),
              InjStateStream(),
              InjStateFuture(),
            ],
          ),
        ),
      ),
    );
  }
}
