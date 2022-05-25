import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import 'app/_index.dart';

void main() async {
  // Mocks.inject();
  RM.env = Flavor.dev;
  await inits();
  runApp(const App());
}
