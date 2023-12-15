
Pod::Spec.new do |s|


  version = '5.13.0'

  s.name         = 'MapxusRenderSDK'
  s.version      = version

  s.summary      = 'Mapxus map render'
  s.description  = 'Provide mapxus map rendering services.'
  s.homepage     = 'https://www.mapxus.com'
  s.license      = { :type => 'BSD 3-Clause', :file => 'LICENSE.md' }
  s.author       = { 'Mapxus' => 'developer@maphive.io' }

  s.platform     = :ios, '9.0'

  s.source       = { :http => "https://github.com/maplibre/maplibre-gl-native/releases/download/ios-v#{version.to_s}/Mapbox-#{version.to_s}.zip" }

  s.requires_arc = true

  s.module_name  = 'Mapbox'
  s.vendored_frameworks = 'Mapbox.xcframework'

end
