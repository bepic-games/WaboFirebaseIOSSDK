Pod::Spec.new do |spec|
  spec.name = "WaboFirebaseIOSSDK"
  spec.version="0.1.56"
  spec.summary = "Wabo SDK Firebase sdk"
  spec.description= <<-DESC
  Wabo SDK for Firebase
  DESC
  spec.homepage= 'https://github.com/bepic-games/WaboFirebaseIOSSDK'
  spec.license= { :type => 'MIT', :file => 'LICENSE' }
  spec.author = { "yilang" => "yilang@bepic.cc" }
  spec.ios.deployment_target = "13.0"
  spec.source = { :git => "https://github.com/bepic-games/WaboFirebaseIOSSDK.git", :tag => "#{spec.version}" }
  spec.source_files= 'WaboFirebaseIOSSDK/*.{framework}/Headers/*.h'
  spec.vendored_frameworks = 'WaboFirebaseIOSSDK/*.{framework}'
  spec.public_header_files = 'WaboFirebaseIOSSDK/*.{framework}/Headers/*.h'
  spec.pod_target_xcconfig = { 'VALID_ARCHS' => 'arm64' }
  spec.swift_version = '5.0'
  spec.dependency 'Firebase/Analytics'     , '11.4.0'
  spec.dependency 'Firebase/Messaging'     , '11.4.0'
  spec.dependency 'Firebase/RemoteConfig'  , '11.4.0'
end
