import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../app/_index.dart';
import '../../../ui_widgets/_index.dart';
import '../../../xtras/_index.dart';

part 'a.inj_theme.data.dart';
part 'b.inj_theme.ctrl.dart';
part 'c.inj_theme.view.dart';
part 'widgets/a.inj_theme.appbar.dart';
part 'widgets/b.inj_theme.fab.dart';
part 'widgets/c.inj_theme.column.dart';
part 'widgets/d.inj_theme.button.dart';
part 'widgets/e.inj_theme.echo.dart';

InjThemeData get _dt => Data.injTheme.st;
InjThemeCtrl get _ct => Ctrl.injTheme;
