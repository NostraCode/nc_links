import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../app/_index.dart';
import '../../../dt_domains/_index.dart';
import '../../../xtras/_index.dart';

part 'a.todo_list.data.dart';
part 'b.todo_list.ctrl.dart';
part 'c.todo_list.view.dart';
part 'widgets/a.todo_list.appbar.dart';
part 'widgets/b.todo_list.fab.dart';
part 'widgets/e.todo_list.loadmore.dart';
part 'widgets/f.todo_list.empty.dart';
part 'widgets/d.todo_list.items.dart';
part 'widgets/d.todo_list.tile.dart';
part 'widgets/c.todo_list.indicator.dart';

TodoProv get _pv => Prov.todo.st;
TodoServ get _sv => Serv.todo;
TodoListCtrl get _ct => Ctrl.todoList;
TodoListData get _dt => Data.todoList.st;
