// ignore_for_file: unused_element

import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../app/_index.dart';
import '../../dt_sources/_index.dart';
import '../../xtras/_index.dart';
import '../_index.dart';

part 'a.chat.prov.dart';
part 'b.chat.serv.dart';
part 'c.chat.repo.dart';
part 'd.chat.repo.mock.dart';

ChatProv get _pv => Prov.chat.st;
ChatServ get _sv => Serv.chat;
