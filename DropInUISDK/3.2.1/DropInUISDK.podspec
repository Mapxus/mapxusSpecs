
Pod::Spec.new do |s|

  version = '3.2.1'

  s.name         = 'DropInUISDK'
  s.version      = version

  s.summary      = 'DropIn UI module'
  s.description  = 'Provide Mapxus Map services.'
  s.homepage     = 'https://www.mapxus.com'
  s.license      = { :type => 'BSD 3-Clause', :file => 'LICENSE' }
  s.author       = { 'Mapxus' => 'developer@maphive.io' }
  #s.resource_bundles = {'DropInUISDK' => ['SDKBundle/PrivacyInfo.xcprivacy']}

  s.platform     = :ios, '12.0'

  s.source       = { :http => "https://nexus3.mapxus.com/repository/dropin-ui-ios/#{version.to_s}/dropin-ui-sdk-ios.zip", :flatten => true }

  s.requires_arc = true

  s.module_name  = 'DropInUISDK'
  s.vendored_frameworks = 'dynamic/DropInUISDK.xcframework'

  s.dependency "MapxusBaseSDK", "~> 6.7.0"
  s.dependency "MapxusMapSDK", "~> 6.7.0"
  s.dependency "MapxusComponentKit", "~> 6.7.0"
  s.dependency "SnapKit", "~> 5.6.0"
  s.dependency "SQLite.swift", "0.14.1"
  s.dependency "ObjectMapper", "~> 3.5.0"
  s.dependency "lottie-ios", "~> 4.3.0"
  s.dependency "Kingfisher", "~> 7.0"

  s.dependency "AFNetworking/Serialization", "~> 4.0.0"
  s.dependency "AFNetworking/Security", "~> 4.0.0"
  s.dependency "AFNetworking/Reachability", "~> 4.0.0"
  s.dependency "AFNetworking/NSURLSession", "~> 4.0.0"
  s.dependency "AFNetworking/UIKit", "~> 4.0.0"
  
end
