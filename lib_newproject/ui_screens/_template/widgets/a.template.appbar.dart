part of '../_index.dart';

class TemplateAppbar extends StatelessWidget {
  const TemplateAppbar({Key? key}) : super(key: key);

  TemplateCtrl get ct => x1TemplateCtrl;
  TemplateData get dt => x1TemplateData.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.rmTitle.st)),
    );
  }
}
