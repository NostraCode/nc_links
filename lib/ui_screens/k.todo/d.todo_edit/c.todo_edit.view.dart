part of '_index.dart';

class TodoEditView extends StatelessWidget {
  const TodoEditView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: TodoEditAppbar(),
      ),
      floatingActionButton: TodoEditFab(),
      body: Column(
        children: [
          TodoEditIndicator(),
          Expanded(
            child: Center(
              child: TodoEditContent(),
            ),
          ),
          // TodoEditEcho(),
        ],
      ),
    );
  }
}
