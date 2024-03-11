import Flutter
import UIKit
import WebKit

public class WebviewUserAgentPlugin: NSObject, FlutterPlugin {
    var webView: WKWebView = WKWebView()

    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "webview_useragent", binaryMessenger: registrar.messenger())
        let instance = WebviewUserAgentPlugin()
        registrar.addMethodCallDelegate(instance, channel: channel)
    }

    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        switch call.method {
        case "getPlatformUserAgent":
            webView.evaluateJavaScript("navigator.userAgent;", completionHandler: { (jsResult, error) in
                guard let userAgent = jsResult as? String else { return }
                result(userAgent)
            })

        default:
            result(FlutterMethodNotImplemented)
        }
    }
}
