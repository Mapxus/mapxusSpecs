
Pod::Spec.new do |s|


  version = '2.5.0'

  s.name         = 'CityGeniSDK-jp'
  s.version      = version

  s.summary      = 'CityGeniSDK-jp Barrier Free module'
  s.description  = 'Provide Mapxus Map services.'
  s.homepage     = 'https://www.mapxus.com'
  s.license      = { :type => 'BSD 3-Clause', :file => 'LICENSE' }
  s.author       = { 'Mapxus' => 'developer@maphive.io' }

  s.platform     = :ios, '11.0'

  s.source       = { :http => "http://nexus3.mapxus.co.jp/repository/barrier-free-citygeni-ios/#{version.to_s}/barrier-free-citygeni-ios.zip", :flatten => true }
  s.requires_arc = true

  s.module_name  = 'CityGeniSDK'
  s.vendored_frameworks = 'dynamic/CityGeniSDK.xcframework'

  s.dependency "MapxusBaseSDK-jp", "~> 7.0.0"
  s.dependency "MapxusMapSDK-jp", "~> 7.0.0"
  s.dependency "MapxusComponentKit-jp", "~> 7.0.0"
  s.dependency "SnapKit", "~> 5.6.0"
  s.dependency "SwiftyJSON", "~> 5.0.1"
  s.dependency "SDWebImage", "5.19.4"
  s.dependency "CRRefresh", "1.1.3"
end
