// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../app/_index.dart';
import '../../../dt_domains/_index.dart';
import '../../../xtras/_index.dart';

part 'a.todo_edit.data.dart';
part 'b.todo_edit.ctrl.dart';
part 'c.todo_edit.view.dart';
part 'widgets/a.todo_edit.appbar.dart';
part 'widgets/b.todo_edit.fab.dart';
part 'widgets/c.todo_edit.content.dart';
part 'widgets/d.todo_edit.indicator.dart';
part 'widgets/e.todo_edit.echo.dart';

TodoProv get _pv => Prov.todo.st;
TodoServ get _sv => Serv.todo;
TodoEditCtrl get _ct => Ctrl.todoEdit;
TodoEditData get _dt => Data.todoEdit.st;
