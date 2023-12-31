import 'dart:convert';
import 'dart:developer' as developer;
import 'dart:io' as io;
import 'dart:io';

import 'package:dio/dio.dart';
import '../../ui_widgets/_index.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:validators/sanitizers.dart' as sanitizers;
import 'package:validators/validators.dart' as validators;

import '../../xtras/_index.dart';
import '../_index.dart';

part 'dialogs.dart';
part 'exceptions.dart';
part 'functions.dart';
part 'logx.dart';
part 'platform_type.dart';
part 'validators.dart';
