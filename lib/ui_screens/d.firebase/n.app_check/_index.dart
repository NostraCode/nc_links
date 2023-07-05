import 'dart:math';

import '../../../ui_widgets/_index.dart';
import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../app/_index.dart';
import '../../../dt_sources/_index.dart';
import '../../../xtras/_index.dart';

part 'a.app_check.data.dart';
part 'b.app_check.ctrl.dart';
part 'c.app_check.view.dart';
part 'widgets/a.app_check.appbar.dart';
part 'widgets/b.app_check.fab.dart';
part 'widgets/c.app_check.charlie.dart';
part 'widgets/d.app_check.delta.dart';
part 'widgets/e.app_check.echo.dart';

AppCheckData get _dt => Data.appCheck.st;
AppCheckCtrl get _ct => Ctrl.appCheck;
