part of '../_index.dart';

class TodoInputContent extends StatelessWidget {
  const TodoInputContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OnReactive(
          () => _dt.rxTodoBuffer.st == null
              ? const Text('null')
              : Column(
                  children: [
                    Text(_dt.rxTodoBuffer.st!.title),
                    Text(_dt.rxTodoBuffer.st!.description),
                    Text(_dt.rxTodoBuffer.st!.id),
                  ],
                ),
        ),
        const SizedBox(height: 30),
        ElevatedButton(
          child: const Text('buffer fresh'),
          onPressed: () {
            _ct.setBufferNew();
          },
        )
      ],
    );
  }
}
