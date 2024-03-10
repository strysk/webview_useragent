import 'package:flutter_test/flutter_test.dart';
import 'package:webview_useragent/webview_useragent.dart';
import 'package:webview_useragent/webview_useragent_platform_interface.dart';
import 'package:webview_useragent/webview_useragent_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockWebviewUserAgentPlatform
    with MockPlatformInterfaceMixin
    implements WebviewUserAgentPlatform {

  @override
  Future<String?> getPlatformUserAgent() => Future.value('42');
}

void main() {
  final WebviewUserAgentPlatform initialPlatform = WebviewUserAgentPlatform.instance;

  test('$MethodChannelWebviewUserAgent is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelWebviewUserAgent>());
  });

  test('getPlatformUserAgent', () async {
    WebviewUserAgent webviewUserAgentPlugin = WebviewUserAgent();
    MockWebviewUserAgentPlatform fakePlatform = MockWebviewUserAgentPlatform();
    WebviewUserAgentPlatform.instance = fakePlatform;

    expect(await webviewUserAgentPlugin.getPlatformUserAgent(), '42');
  });
}
