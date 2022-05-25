part of '_index.dart';

class TemplateView extends StatelessWidget {
  const TemplateView({Key? key}) : super(key: key);

  TemplateCtrl get ct => x1TemplateCtrl;
  TemplateData get dt => x1TemplateData.st;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: TemplateAppbar(),
      ),
      floatingActionButton: const TemplateFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            TemplateCharlie(),
            TemplateDelta(),
            TemplateEcho(),
          ],
        ),
      ),
    );
  }
}
