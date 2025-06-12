import 'package:flutter/foundation.dart';
import 'package:hello/hello_platform_interface.dart';
import 'package:hello/hello_web.dart';

class Hello {
  static HelloPlatform get _platform {
    // Return web implementation if on web
    if (kIsWeb) return HelloWeb();
    return HelloPlatform.instance;
  }

  Future<String?> getPlatformVersion() {
    return _platform.getPlatformVersion();
  }

  Future<bool?> checkNetworkConnectionStatus() async {
    return _platform.checkNetworkConnectionStatus();
  }
}
