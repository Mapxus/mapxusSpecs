
Pod::Spec.new do |s|


  version = '7.3.0'

  s.name         = 'MapxusVisualSDK-jp'
  s.version      = version

  s.summary      = 'Indoor visual map sdk'
  s.description  = 'Provide indoor visualization services.'
  s.homepage     = 'http://www.mapxus.co.jp'
  s.license      = { :type => 'BSD 3-Clause', :file => 'LICENSE' }
  s.author       = { 'Mapxus' => 'developer@maphive.io' }

  s.platform     = :ios, '9.0'

  s.source       = { :http => "https://nexus3.mapxus.co.jp/repository/ios-sdk/#{version.to_s}/mapxus-visual-sdk-ios-jp.zip", :flatten => true }

  s.requires_arc = true

  s.module_name  = 'MapxusVisualSDK'
  s.vendored_frameworks = 'dynamic/MapxusVisualSDK.xcframework'

  s.dependency "MapxusBaseSDK-jp", version


end