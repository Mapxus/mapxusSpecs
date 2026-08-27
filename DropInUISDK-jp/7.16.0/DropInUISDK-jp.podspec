
Pod::Spec.new do |s|

  version = '7.16.0'

  s.name         = 'DropInUISDK-jp'
  s.version      = version

  s.summary      = 'DropIn UI jp module'
  s.description  = 'Provide Mapxus Map services.'
  s.homepage     = 'https://www.mapxus.co.jp'
  s.license      = { :type => 'BSD 3-Clause', :file => 'LICENSE' }
  s.author       = { 'Mapxus' => 'developer@maphive.io' }

  s.platform     = :ios, '13.0'

  s.source       = { :http => "https://nexus3.mapxus.co.jp/repository/dropin-ui-ios/#{version.to_s}/dropin-ui-sdk-ios-jp.zip", :flatten => true }

  s.requires_arc = true

  s.libraries    = 'c++'

  s.module_name  = 'DropInUISDK'
  s.vendored_frameworks = 'dynamic/DropInUISDK.xcframework'

  s.dependency "MapxusBaseSDK-jp", "8.6.0"
  
end
