part of '_index.dart';

class TodoDetailView extends StatelessWidget {
  const TodoDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: TodoDetailAppbar(),
      ),
      floatingActionButton: TodoDetailFab(),
      body: Column(
        children: [
          TodoDetailIndicator(),
          Expanded(
            child: Center(
              child: TodoDetailContent(),
            ),
          ),
          // TodoDetailEcho(),
        ],
      ),
    );
  }
}
