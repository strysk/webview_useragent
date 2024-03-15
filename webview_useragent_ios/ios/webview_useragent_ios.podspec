Pod::Spec.new do |s|
  s.name             = 'webview_useragent_ios'
  s.version          = '1.0.0'
  s.summary          = 'pod for webview_useragent.'
  s.description      = 'pod for webview_useragent.'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Ryosuke Seto' => 'strysk.dev@gmail.com' }
  s.homepage         = ''
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '12.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
