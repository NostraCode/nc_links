part of '_index.dart';

class TodoInputView extends StatelessWidget {
  const TodoInputView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: TodoInputAppbar(),
      ),
      floatingActionButton: TodoInputFab(),
      body: Column(
        children: [
          TodoInputIndicator(),
          Expanded(
            child: Center(
              child: TodoInputContent(),
            ),
          ),
          // TodoInputDelta(),
          // TodoInputEcho(),
        ],
      ),
    );
  }
}
