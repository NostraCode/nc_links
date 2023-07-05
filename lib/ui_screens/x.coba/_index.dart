import 'dart:math';

import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../app/_index.dart';
import '../../xtras/_index.dart';

part 'a.coba.data.dart';
part 'b.coba.ctrl.dart';
part 'c.coba.view.dart';
part 'widgets/a.coba.appbar.dart';
part 'widgets/b.coba.fab.dart';
part 'widgets/c.coba.charlie.dart';
part 'widgets/d.coba.delta.dart';
part 'widgets/e.coba.echo.dart';

// static CobaCtrl get coba => CobaCtrl();
// final _cobaData = RM1.inj(CobaData(), Ctrl.coba.init);
// static Injected<CobaData> get coba => _cobaData;
// export 'coba/_index.dart';

CobaData get _dt => Data.coba.st;
CobaCtrl get _ct => Ctrl.coba;
