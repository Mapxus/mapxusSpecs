
Pod::Spec.new do |s|


  version = '8.0.1'

  s.name         = 'MapxusBaseSDK'
  s.version      = version

  s.summary      = 'Mapxus Map basic module'
  s.description  = 'Provide Mapxus Map services.'
  s.homepage     = 'https://www.mapxus.com'
  s.license      = { :type => 'BSD 3-Clause', :file => 'LICENSE' }
  s.author       = { 'Mapxus' => 'developer@maphive.io' }

  s.platform     = :ios, '13.0'

  s.source       = { :http => "https://nexus3.mapxus.com/repository/ios-sdk/#{version.to_s}/mapxus-base-sdk-ios.zip", :flatten => true }

  s.requires_arc = true

  s.module_name  = 'MapxusBaseSDK'
  s.vendored_frameworks = 'dynamic/MapxusBaseSDK.xcframework'

  s.dependency "AFNetworking/Serialization", "~> 4.0.4"
  s.dependency "AFNetworking/Security", "~> 4.0.4"
  s.dependency "AFNetworking/Reachability", "~> 4.0.4"
  s.dependency "AFNetworking/NSURLSession", "~> 4.0.4"
  s.dependency "YYModel", "~> 1.0.6"
  s.dependency "Secp256k1", "~> 1.0.0"


end
