part of '_index.dart';

final x1TemplateCtrl = TemplateCtrl();

class TemplateCtrl {
  TemplateData get dt => x1TemplateData.st;

  init() => loggerx(TemplateCtrl).v('init...');

  action() => dt.rmInt.setState((s) => s + 1);
}
