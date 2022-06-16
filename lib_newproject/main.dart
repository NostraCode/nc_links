import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'app/_index.dart';

void main() async {
  // Mocks.inject();
  // await inits();
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const App(), // Wrap your app
    ),
  );
}
