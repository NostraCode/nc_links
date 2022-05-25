part of '../_index.dart';

class CobaDuaCharlie extends StatelessWidget {
  const CobaDuaCharlie({Key? key}) : super(key: key);

  CobaDuaCtrl get ct => x1CobaDuaCtrl;
  CobaDuaData get dt => x1CobaDuaData.st;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(Random().nextInt(100).toString()),
        OnReactive(() => Text('${dt.rmInt.st}')),
        ElevatedButton(
          child: const Text('to coba tiga'),
          onPressed: () => nav.to(Routes.cobaTiga),
        ),
      ],
    );
  }
}
