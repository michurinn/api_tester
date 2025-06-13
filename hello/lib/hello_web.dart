// lib/src/hello_web.dart
import 'package:web/web.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:hello/hello_platform_interface.dart';

class HelloWeb extends HelloPlatform {
  /// Register this web implementation
  static void registerWith(Registrar registrar) {
    HelloPlatform.instance = HelloWeb();
  }

  @override
  Future<String?> getPlatformVersion() async {
    return 'Web ${window.navigator.userAgent}';
  }

  @override
  Future<bool?> checkNetworkConnectionStatus() async {
    final st = window.navigator.onLine;
    return window.navigator.onLine;
  }
}
