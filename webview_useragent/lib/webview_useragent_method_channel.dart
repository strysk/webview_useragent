import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'webview_useragent_platform_interface.dart';

/// An implementation of [WebviewUseragentPlatform] that uses method channels.
class MethodChannelWebviewUseragent extends WebviewUseragentPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('webview_useragent');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
