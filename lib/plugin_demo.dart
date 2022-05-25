import 'dart:async';

import 'package:flutter/services.dart';

class PluginDemo {
  static const MethodChannel _channel = MethodChannel('plugin_demo');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static int addOne(int value) => value + 1;
}
