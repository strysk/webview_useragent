import 'package:flutter/services.dart';
import 'package:webview_useragent_platform_interface/webview_useragent_platform_interface.dart';

class WebviewUserAgentAndroid extends WebviewUserAgentPlatform {
  WebviewUserAgentAndroid();

  final methodChannel = MethodChannel("webview_useragent");

  static void registerWith() {
    WebviewUserAgentPlatform.instance = WebviewUserAgentAndroid();
  }

  @override
  Future<String> getPlatformUserAgent() async {
    final userAgent = await methodChannel.invokeMethod("getPlatformUserAgent");
    return userAgent;
  }
}
