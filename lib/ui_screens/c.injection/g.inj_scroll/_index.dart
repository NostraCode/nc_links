import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../app/_index.dart';
import '../../../xtras/_index.dart';

part 'a.inj_scroll.data.dart';
part 'b.inj_scroll.ctrl.dart';
part 'c.inj_scroll.view.dart';
part 'widgets/a.inj_scroll.appbar.dart';
part 'widgets/b.inj_scroll.fab.dart';
part 'widgets/c.inj_scroll.charlie.dart';
part 'widgets/d.inj_scroll.delta.dart';
part 'widgets/e.inj_scroll.echo.dart';

InjScrollData get _dt => Data.injScroll.st;
InjScrollCtrl get _ct => Ctrl.injScroll;
