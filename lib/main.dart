import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import 'app/_index.dart';

void main() async {
  // Mocks.inject();
  RM.env = Flavor.dev;
  await inits();
  runApp(
    DevicePreview(
      enabled: PlatformType.isWeb,
      builder: (context) => const App(), // Wrap your app
    ),
  );
}
