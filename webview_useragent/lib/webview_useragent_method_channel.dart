import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'webview_useragent_platform_interface.dart';

/// An implementation of [WebviewUseragentPlatform] that uses method channels.
class MethodChannelWebviewUserAgent extends WebviewUserAgentPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('webview_useragent');

  @override
  Future<String?> getPlatformUserAgent() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformUserAgent');
    return version;
  }
}
