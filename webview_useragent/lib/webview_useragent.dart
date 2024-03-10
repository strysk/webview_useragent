
import 'webview_useragent_platform_interface.dart';

class WebviewUserAgent {
  Future<String?> getPlatformUserAgent() {
    return WebviewUserAgentPlatform.instance.getPlatformUserAgent();
  }
}
