import 'package:flutter_test/flutter_test.dart';
import 'package:webview_useragent/webview_useragent.dart';
import 'package:webview_useragent/webview_useragent_platform_interface.dart';
import 'package:webview_useragent/webview_useragent_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockWebviewUseragentPlatform
    with MockPlatformInterfaceMixin
    implements WebviewUseragentPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final WebviewUseragentPlatform initialPlatform = WebviewUseragentPlatform.instance;

  test('$MethodChannelWebviewUseragent is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelWebviewUseragent>());
  });

  test('getPlatformVersion', () async {
    WebviewUseragent webviewUseragentPlugin = WebviewUseragent();
    MockWebviewUseragentPlatform fakePlatform = MockWebviewUseragentPlatform();
    WebviewUseragentPlatform.instance = fakePlatform;

    expect(await webviewUseragentPlugin.getPlatformVersion(), '42');
  });
}
