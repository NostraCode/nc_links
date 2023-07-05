// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../app/_index.dart';
import '../../../dt_domains/_index.dart';
import '../../../xtras/_index.dart';

part 'a.todo_input.data.dart';
part 'b.todo_input.ctrl.dart';
part 'c.todo_input.view.dart';
part 'widgets/a.todo_input.appbar.dart';
part 'widgets/b.todo_input.fab.dart';
part 'widgets/c.todo_input.content.dart';
part 'widgets/d.todo_input.indicator.dart';
part 'widgets/e.todo_input.echo.dart';

TodoProv get _pv => Prov.todo.st;
TodoServ get _sv => Serv.todo;
TodoInputCtrl get _ct => Ctrl.todoInput;
TodoInputData get _dt => Data.todoInput.st;
