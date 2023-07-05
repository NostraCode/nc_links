import 'package:flutter/material.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../app/_index.dart';
import '../../../ui_widgets/_index.dart';
import '../../../xtras/_index.dart';

part 'a.forget.data.dart';
part 'b.forget.ctrl.dart';
part 'c.forget.view.dart';
part 'widgets/a.forget.appbar.dart';
part 'widgets/b.forget.fab.dart';
part 'widgets/c.forget.email.dart';
part 'widgets/d.forget.btn_submit.dart';
part 'widgets/e.forget.btn_to_login.dart';

ForgetData get _dt => Data.forget.st;
ForgetCtrl get _ct => Ctrl.forget;
