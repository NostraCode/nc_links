import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../app/_index.dart';
import '../../../ui_widgets/_index.dart';
import '../../../xtras/_index.dart';

part 'a.chat_login.data.dart';
part 'b.chat_login.ctrl.dart';
part 'c.chat_login.view.dart';
part 'widgets/a.chat_login.appbar.dart';
part 'widgets/b.chat_login.fab.dart';
part 'widgets/c.chat_login.charlie.dart';
part 'widgets/d.chat_login.delta.dart';
part 'widgets/e.chat_login.echo.dart';

ChatLoginData get _dt => Data.chatLogin.st;
ChatLoginCtrl get _ct => Ctrl.chatLogin;
