
import 'webview_useragent_platform_interface.dart';

class WebviewUseragent {
  Future<String?> getPlatformVersion() {
    return WebviewUseragentPlatform.instance.getPlatformVersion();
  }
}
