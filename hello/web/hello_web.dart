// web/hello_web.dart
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:hello/hello_web.dart';

void registerPlugins(Registrar registrar) {
  HelloWeb.registerWith(registrar);
}
