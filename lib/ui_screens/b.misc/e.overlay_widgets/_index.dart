import 'dart:math';

import 'package:flutter/material.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../app/_index.dart';
import '../../../ui_widgets/_index.dart';
import '../../../xtras/_index.dart';

part 'a.overlay_widgets.data.dart';
part 'b.overlay_widgets.ctrl.dart';
part 'c.overlay_widgets.view.dart';
part 'widgets/a.overlay_widgets.appbar.dart';
part 'widgets/b.overlay_widgets.fab.dart';
part 'widgets/c.overlay_widgets.charlie.dart';
part 'widgets/d.overlay_widgets.delta.dart';
part 'widgets/e.overlay_widgets.echo.dart';

OverlayWidgetsData get _dt => Data.overlayWidget.st;
OverlayWidgetsCtrl get _ct => Ctrl.overlayWidget;
