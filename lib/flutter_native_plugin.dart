import 'dart:async';

import 'package:flutter/services.dart';

class FlutterNativePlugin {
  static const MethodChannel _channel =
      const MethodChannel('flutter_native_plugin');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
