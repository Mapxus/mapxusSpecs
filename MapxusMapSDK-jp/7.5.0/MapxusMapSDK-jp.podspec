
Pod::Spec.new do |s|


  version = '7.5.0'

  s.name         = 'MapxusMapSDK-jp'
  s.version      = version

  s.summary      = 'Indoor map SDK.'
  s.description  = 'To be the largest global indoor map.'
  s.homepage     = 'http://www.mapxus.co.jp'
  s.license      = { :type => 'BSD 3-Clause', :file => 'LICENSE' }
  s.author       = { 'Mapxus' => 'developer@maphive.io' }

  s.platform     = :ios, '9.0'

  s.source       = { :http => "https://nexus3.mapxus.co.jp/repository/ios-sdk/#{version.to_s}/mapxus-map-sdk-ios-jp.zip", :flatten => true }
  
  s.requires_arc = true

  s.module_name  = 'MapxusMapSDK'
  s.vendored_frameworks = 'dynamic/MapxusMapSDK.xcframework'

  s.dependency "MapxusBaseSDK-jp", version
  s.dependency "MapxusRenderSDK", "5.13.0"

  
end