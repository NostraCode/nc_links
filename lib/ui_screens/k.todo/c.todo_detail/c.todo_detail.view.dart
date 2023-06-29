part of '_index.dart';

class TodoDetailView extends StatelessWidget {
  const TodoDetailView({Key? key}) : super(key: key);

  TodoDetailCtrl get ct => Ctrl.todoDetail;
  TodoDetailData get dt => Data.todoDetail.st;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: TodoDetailAppbar(),
      ),
      floatingActionButton: TodoDetailFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TodoDetailCharlie(),
            TodoDetailDelta(),
            TodoDetailEcho(),
          ],
        ),
      ),
    );
  }
}
