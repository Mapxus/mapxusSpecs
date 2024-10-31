
Pod::Spec.new do |s|

  version = '3.10.0'

  s.name         = 'DropInUISDK-jp'
  s.version      = version

  s.summary      = 'DropIn UI jp module'
  s.description  = 'Provide Mapxus Map services.'
  s.homepage     = 'https://www.mapxus.com'
  s.license      = { :type => 'BSD 3-Clause', :file => 'LICENSE' }
  s.author       = { 'Mapxus' => 'developer@maphive.io' }

  s.platform     = :ios, '13.0'

  s.source       = { :http => "https://nexus3.mapxus.co.jp/repository/dropin-ui-ios/#{version.to_s}/dropin-ui-sdk-ios-jp.zip", :flatten => true }

  s.requires_arc = true

  s.module_name  = 'DropInUISDK'
  s.vendored_frameworks = 'dynamic/DropInUISDK.xcframework'

  # 保留并包含 dSYMs.zip 文件
  s.resources = ['dynamic/dSYMs/*.zip']

  s.dependency "MapxusBaseSDK-jp", "~> 6.8.0"
  s.dependency "MapxusMapSDK-jp", "~> 6.8.0"
  s.dependency "MapxusComponentKit-jp", "~> 6.8.0"
  s.dependency "SnapKit", "~> 5.6.0"
  s.dependency "SQLite.swift", "~> 0.14.0"
  s.dependency "lottie-ios", "~> 4.3.0"
  s.dependency "Kingfisher", "~> 8.0"

  s.dependency "AFNetworking/Serialization", "~> 4.0.0"
  s.dependency "AFNetworking/Security", "~> 4.0.0"
  s.dependency "AFNetworking/Reachability", "~> 4.0.0"
  s.dependency "AFNetworking/NSURLSession", "~> 4.0.0"
  s.dependency "AFNetworking/UIKit", "~> 4.0.0"
  
end
