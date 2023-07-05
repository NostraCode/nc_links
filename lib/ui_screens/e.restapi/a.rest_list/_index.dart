import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../app/_index.dart';
import '../../../dt_domains/_index.dart';
import '../../../xtras/_index.dart';

part 'a.rest_list.data.dart';
part 'b.rest_list.ctrl.dart';
part 'c.rest_list.view.dart';
part 'widgets/a.rest_list.appbar.dart';
part 'widgets/b.rest_list.fab.dart';
part 'widgets/c.rest_list.cards.dart';
part 'widgets/d.rest_list.card.dart';
part 'widgets/e.rest_list.loadmore.dart';
part 'widgets/g.rest_list.pull_text.dart';

RestListData get _dt => Data.restList.st;
RestListCtrl get _ct => Ctrl.restList;
