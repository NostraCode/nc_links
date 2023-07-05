import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../app/_index.dart';
import '../../../xtras/_index.dart';

part 'a.inj_tab.data.dart';
part 'b.inj_tab.ctrl.dart';
part 'c.inj_tab.view.dart';
part 'widgets/a.inj_tab.appbar.dart';
part 'widgets/b.inj_tab.fab.dart';
part 'widgets/c.inj_tab.charlie.dart';
part 'widgets/d.inj_tab.delta.dart';
part 'widgets/e.inj_tab.echo.dart';

InjTabData get _dt => Data.injTab.st;
InjTabCtrl get _ct => Ctrl.injTab;
