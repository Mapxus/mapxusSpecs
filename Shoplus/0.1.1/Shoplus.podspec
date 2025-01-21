
Pod::Spec.new do |s|

  version = '0.1.1'

  s.name         = 'Shoplus'
  s.version      = version

  s.summary      = 'Shoplus module'
  s.description  = 'Provide Mapxus Map services.'
  s.homepage     = 'https://www.mapxus.com'
  s.license      = { :type => 'BSD 3-Clause', :file => 'LICENSE' }
  s.author       = { 'Mapxus' => 'developer@maphive.io' }
  #s.resource_bundles = {'Shoplus' => ['SDKBundle/PrivacyInfo.xcprivacy']}

  s.platform     = :ios, '13.0'

  s.source       = { :http => "https://nexus3.mapxus.com/repository/shoplus-sdk-ios/#{version.to_s}/shoplus-sdk-ios.zip", :flatten => true }

  s.requires_arc = true

  s.module_name  = 'Shoplus'
  s.vendored_frameworks = 'dynamic/Shoplus.xcframework'


  s.dependency "MapxusBaseSDK", "7.0.0"
  #s.dependency "AnywhereUtilCore", "1.0.5"

end
