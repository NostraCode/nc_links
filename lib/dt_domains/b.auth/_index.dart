// ignore_for_file: unused_element

import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../app/_index.dart';
import '../../dt_sources/_index.dart';
import '../../xtras/_index.dart';
import '../_models/_index.dart';

part 'a.auth.prov.dart';
part 'b.auth.serv.dart';

AuthProv get _pv => Prov.auth.st;
AuthServ get _sv => Serv.auth;
