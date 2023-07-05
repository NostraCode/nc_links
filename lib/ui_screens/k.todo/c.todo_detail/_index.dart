// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../app/_index.dart';
import '../../../dt_domains/_index.dart';
import '../../../xtras/_index.dart';
import '../../_index.dart';

part 'a.todo_detail.data.dart';
part 'b.todo_detail.ctrl.dart';
part 'c.todo_detail.view.dart';
part 'widgets/a.todo_detail.appbar.dart';
part 'widgets/b.todo_detail.fab.dart';
part 'widgets/c.todo_detail.content.dart';
part 'widgets/d.todo_detail.indicator.dart';
part 'widgets/e.todo_detail.echo.dart';

TodoProv get _pv => Prov.todo.st;
TodoServ get _sv => Serv.todo;
TodoDetailCtrl get _ct => Ctrl.todoDetail;
TodoDetailData get _dt => Data.todoDetail.st;
