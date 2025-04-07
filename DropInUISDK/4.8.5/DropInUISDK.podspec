
Pod::Spec.new do |s|

  version = '4.8.5'

  s.name         = 'DropInUISDK'
  s.version      = version

  s.summary      = 'DropIn UI module'
  s.description  = 'Provide Mapxus Map services.'
  s.homepage     = 'https://www.mapxus.com'
  s.license      = { :type => 'BSD 3-Clause', :file => 'LICENSE' }
  s.author       = { 'Mapxus' => 'developer@maphive.io' }
  #s.resource_bundles = {'DropInUISDK' => ['SDKBundle/PrivacyInfo.xcprivacy']}

  s.platform     = :ios, '13.0'

  s.source       = { :http => "https://nexus3.mapxus.com/repository/dropin-ui-ios/#{version.to_s}/dropin-ui-sdk-ios.zip", :flatten => true }

  s.requires_arc = true

  s.module_name  = 'DropInUISDK'
  s.vendored_frameworks = 'dynamic/DropInUISDK.xcframework'

  # 保留并包含 dSYMs.zip 文件
  s.resources = ['dynamic/dSYMs/*.zip']

  s.dependency "MapxusBaseSDK", "7.0.0"
  s.dependency "MapxusMapSDK", "7.0.0"
  s.dependency "MapxusComponentKit", "7.0.0"
  s.dependency "SnapKit", "5.7.1"
  s.dependency "SQLite.swift", "0.15.0"
  s.dependency "lottie-ios", "4.5.1"
  s.dependency "AnywhereUtilCore", "1.1.8"

  s.dependency "AFNetworking/Serialization", "~> 4.0.2"
  s.dependency "AFNetworking/Security", "~> 4.0.2"
  s.dependency "AFNetworking/Reachability", "~> 4.0.2"
  s.dependency "AFNetworking/NSURLSession", "~> 4.0.2"
  s.dependency "AFNetworking/UIKit", "~> 4.0.2"

end
