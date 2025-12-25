
Pod::Spec.new do |s|


  version = '8.5.0'

  s.name         = 'MapxusComponentKit-jp'
  s.version      = version

  s.summary      = 'Indoor map UI component'
  s.description  = 'Standardized indoor map UI component.'
  s.homepage     = 'http://www.mapxus.co.jp'
  s.license      = { :type => 'BSD 3-Clause', :file => 'LICENSE' }
  s.author       = { 'Mapxus' => 'developer@maphive.io' }

  s.platform     = :ios, '13.0'

  s.source       = { :http => "https://nexus3.mapxus.co.jp/repository/ios-sdk/#{version.to_s}/mapxus-component-kit-ios-jp.zip", :flatten => true }

  s.requires_arc = true

  s.module_name  = 'MapxusComponentKit'
  s.vendored_frameworks = 'dynamic/MapxusComponentKit.xcframework'

  s.dependency "MapxusMapSDK-jp", version


end