
Pod::Spec.new do |s|

  version = '6.0.0'

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

  s.xcconfig = {
    'ENABLE_USER_SCRIPT_SANDBOXING' => 'NO',
  }
                
  s.pod_target_xcconfig = {
    'KOTLIN_PROJECT_PATH' => ':core',
    'PRODUCT_MODULE_NAME' => 'DropInUISDK',
  }
                
  # s.script_phases = [
  #       {
  #           :name => 'Build DropInUISDK',
  #           :execution_position => :before_compile,
  #           :shell_path => '/bin/sh',
  #           :script => <<-SCRIPT
  #               if [ "YES" = "$OVERRIDE_KOTLIN_BUILD_IDE_SUPPORTED" ]; then
  #                 echo "Skipping Gradle build task invocation due to OVERRIDE_KOTLIN_BUILD_IDE_SUPPORTED environment variable set to \"YES\""
  #                 exit 0
  #               fi
  #               set -ev
  #               REPO_ROOT="$PODS_TARGET_SRCROOT"
  #               "$REPO_ROOT/../gradlew" -p "$REPO_ROOT" $KOTLIN_PROJECT_PATH:syncFramework \
  #                   -Pkotlin.native.cocoapods.platform=$PLATFORM_NAME \
  #                   -Pkotlin.native.cocoapods.archs="$ARCHS" \
  #                   -Pkotlin.native.cocoapods.configuration="$CONFIGURATION"
  #           SCRIPT
  #       }
  # ]

  s.dependency "MapxusBaseSDK", "7.5.0"

end
