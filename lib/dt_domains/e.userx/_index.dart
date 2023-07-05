// ignore_for_file: unused_element

import 'package:dio/dio.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../app/_index.dart';
import '../../dt_sources/_index.dart';
import '../../xtras/_index.dart';
import '../_models/_index.dart';

part 'a.userx.prov.dart';
part 'b.userx.serv.dart';
part 'c.userx.repo.dart';
part 'd.userx.repo.mock.dart';

UserxProv get _pv => Prov.userx.st;
UserxServ get _sv => Serv.userx;
