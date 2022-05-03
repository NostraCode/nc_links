part of '../_index.dart';

class TemplateFab extends StatelessWidget {
  const TemplateFab({Key? key}) : super(key: key);

  TemplateCtrl get ct => x1TemplateCtrl;
  TemplateData get dt => x1TemplateData.st;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => ct.action(),
    );
  }
}
