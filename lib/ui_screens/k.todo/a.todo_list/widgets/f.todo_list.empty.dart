part of '../_index.dart';

class TodoListEmpty extends StatelessWidget {
  const TodoListEmpty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnReactive(
      () => Visibility(
        visible: _dt.rxTodo.st.isEmpty,
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'mobile => pull to refresh',
                  textScaleFactor: 0.8,
                ),
              ),
              Text('empty'),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
