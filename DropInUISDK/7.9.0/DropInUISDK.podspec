
Pod::Spec.new do |s|

  version = '7.9.0'

  s.name         = 'DropInUISDK'
  s.version      = version

  s.summary      = 'DropIn UI module'
  s.description  = 'Provide Mapxus Map services.'
  s.homepage     = 'https://www.mapxus.com'
  s.license      = { :type => 'BSD 3-Clause', :file => 'LICENSE' }
  s.author       = { 'Mapxus' => 'developer@maphive.io' }

  s.platform     = :ios, '13.0'

  s.source       = { :http => "https://nexus3.mapxus.com/repository/dropin-ui-ios/#{version.to_s}/dropin-ui-sdk-ios.zip", :flatten => true }

  s.requires_arc = true

  s.libraries    = 'c++'

  s.module_name  = 'DropInUISDK'
  s.vendored_frameworks = 'dynamic/DropInUISDK.xcframework'

  s.dependency "MapxusBaseSDK", "8.4.0"

end
