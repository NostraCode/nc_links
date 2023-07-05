import 'dart:math';

import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../app/_index.dart';
import '../../../ui_widgets/_index.dart';
import '../../../xtras/_index.dart';

part 'a.inj_state.data.dart';
part 'b.inj_state.ctrl.dart';
part 'c.inj_state.view.dart';
part 'pages/a.inj_state.widgets.dart';
part 'pages/b.inj_state.stream.dart';
part 'pages/c.inj_state.future.dart';
part 'widgets/a.inj_state.appbar.dart';
part 'widgets/b.inj_state.fab.dart';
part 'widgets/c.inj_state.columnx.dart';
part 'widgets/d.inj_state.bigtext.dart';
part 'widgets/e.inj_state.stream_btn_v1.dart';
part 'widgets/f.inj_state.stream_btn_v2.dart';

InjStateData get _dt => Data.injState.st;
InjStateCtrl get _ct => Ctrl.injState;
