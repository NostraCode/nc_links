part of '../_index.dart';

class TemplateCharlie extends StatelessWidget {
  const TemplateCharlie({Key? key}) : super(key: key);

  TemplateCtrl get ct => x1TemplateCtrl;
  TemplateData get dt => x1TemplateData.st;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(Random().nextInt(100).toString()),
        OnReactive(() => Text('${dt.rmInt.st}')),
      ],
    );
  }
}
