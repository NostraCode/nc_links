part of '../_index.dart';

class FbFirestoreD extends StatelessWidget {
  const FbFirestoreD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          child: const Text('create'),
          onPressed: () => _ct.createItem(),
        ),
        const SizedBoxW(5),
        ElevatedButton(
          child: const Text('read'),
          onPressed: () => _ct.readItem(),
        ),
        const SizedBoxW(5),
        ElevatedButton(
          child: const Text('update'),
          onPressed: () => _ct.updateItem(),
        ),
        const SizedBoxW(5),
        ElevatedButton(
          child: const Text('delete'),
          onPressed: () => _ct.deleteItem(),
        ),
      ],
    );
  }
}
