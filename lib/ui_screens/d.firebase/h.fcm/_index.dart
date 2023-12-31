import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../app/_index.dart';
import '../../../ui_widgets/spaces/_index.dart';
import '../../../xtras/_index.dart';

part 'a.fcm.data.dart';
part 'b.fcm.ctrl.dart';
part 'c.fcm.view.dart';
part 'widgets/a.fcm.appbar.dart';
part 'widgets/b.fcm.fab.dart';
part 'widgets/c.fcm.subscriber.dart';
part 'widgets/d.fcm.sender.dart';
part 'widgets/e.fcm.echo.dart';

FcmData get _dt => Data.fcm.st;
FcmCtrl get _ct => Ctrl.fcm;
