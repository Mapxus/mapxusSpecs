
Pod::Spec.new do |s|


  version = '1.2.9'

  s.name         = 'CityGeniSDK-jp'
  s.version      = version

  s.summary      = 'CityGeniSDK-jp Barrier Free module'
  s.description  = 'Provide Mapxus Map services.'
  s.homepage     = 'https://www.mapxus.com'
  s.license      = { :type => 'BSD 3-Clause', :file => 'LICENSE' }
  s.author       = { 'Mapxus' => 'developer@maphive.io' }

  s.platform     = :ios, '11.0'

  s.source       = { :http => "https://nexus3.mapxus.co.jp/repository/barrier-free-citygeni-ios/#{version.to_s}/barrier-free-citygeni-ios.zip", :flatten => true }
  s.requires_arc = true

  s.module_name  = 'CityGeniSDK'
  s.vendored_frameworks = 'dynamic/CityGeniSDK.xcframework'

  s.dependency "MapxusBaseSDK-jp", "~> 6.7.0"
  s.dependency "MapxusMapSDK-jp", "~> 6.7.0"
  s.dependency "MapxusComponentKit-jp", "~> 6.7.0"
  s.dependency "SnapKit", "~> 5.6.0"
  s.dependency "SwiftyJSON", "~> 5.0.1"
  
end
