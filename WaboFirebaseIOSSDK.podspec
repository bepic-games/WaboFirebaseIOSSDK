Pod::Spec.new do |spec|
  spec.name = "WaboFirebaseIOSSDK"
  spec.version="0.1.0.9"
  spec.summary = "Wabo SDK Firebase sdk"
  spec.description= <<-DESC
  Wabo SDK for Firebase
  DESC
  spec.homepage= 'https://github.com/bepic-games/WaboFirebaseIOSSDK'
  spec.license= { :type => 'MIT', :file => 'LICENSE' }
  spec.author = { "yilang" => "yilang@bepic.cc" }
  spec.ios.deployment_target = "11.0"
  spec.source = { :git => "https://github.com/bepic-games/WaboFirebaseIOSSDK.git", :tag => "#{spec.version}" }
  spec.source_files= 'WaboFirebaseIOSSDK/*.{framework}/Headers/*.h'
  spec.vendored_frameworks = 'WaboFirebaseIOSSDK/*.{framework}'
  spec.public_header_files = 'WaboFirebaseIOSSDK/*.{framework}/Headers/*.h'
  spec.pod_target_xcconfig = { 'VALID_ARCHS' => 'arm64' }
  spec.swift_version = '5.0'
  # spec.dependency 'FirebaseCore'          , '10.1.0', :modular_headers => true
  # spec.dependency 'GoogleUtilities'       , '7.11.0', :modular_headers => true
  spec.dependency 'FirebaseAnalytics'     , '10.1.0'
  spec.dependency 'FirebaseMessaging'     , '10.1.0'
  spec.dependency 'FirebaseRemoteConfig'  , '10.1.0'
end
