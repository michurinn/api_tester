import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hello/hello_platform_interface.dart';
import 'package:hello/hello_web.dart';

import 'src/app.dart';
import 'src/settings/settings_controller.dart';
import 'src/settings/settings_service.dart';

void main() async {
  final settingsController = SettingsController(SettingsService());

  await settingsController.loadSettings();

    // Register web implementation first
  if (kIsWeb) {
    // Initialize web plugins
    HelloPlatform.instance = HelloWeb();
  }


  runApp(MyApp(settingsController: settingsController));
}
