part of '../_index.dart';

class FbFirestoreD extends StatelessWidget {
  const FbFirestoreD({Key? key}) : super(key: key);

  FbFirestoreCtrl get ct => x1FbFirestoreCtrl;
  FbFirestoreData get dt => x1FbFirestoreData.st;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          child: const Text('create'),
          onPressed: () => ct.createItem(),
        ),
        const SizedBoxW(5),
        ElevatedButton(
          child: const Text('read'),
          onPressed: () => ct.readItem(),
        ),
        const SizedBoxW(5),
        ElevatedButton(
          child: const Text('update'),
          onPressed: () => ct.updateItem(),
        ),
        const SizedBoxW(5),
        ElevatedButton(
          child: const Text('delete'),
          onPressed: () => ct.deleteItem(),
        ),
      ],
    );
  }
}
