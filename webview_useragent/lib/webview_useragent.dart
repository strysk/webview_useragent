import 'package:webview_useragent_platform_interface/webview_useragent_platform_interface.dart';

class WebviewUserAgent {
  Future<String?> getPlatformUserAgent() async {
    return await WebviewUserAgentPlatform.instance.getPlatformUserAgent();
  }
}
