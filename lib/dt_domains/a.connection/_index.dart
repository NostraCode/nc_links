// ignore_for_file: unused_element

import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/services.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../app/_index.dart';
import '../../xtras/_index.dart';

part 'a.conn.prov.dart';
part 'b.conn.serv.dart';
part 'c.conn.repo.dart';
part 'd.conn.repo.mock.dart';

ConnProv get _pv => Prov.conn.st;
ConnServ get _sv => Serv.conn;
