Pod::Spec.new do |s|
  s.name             = 'PodLearn'
  s.version          = '0.1.2'
  s.summary          = 'Pay iOS SDK'
 
  s.description      = <<-DESC
  学习 oc static library import to the swift framework
			DESC
 
  s.swift_version    = '4.2'
  s.homepage         = 'https://cloud.minapp.com/'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'pengquanhua' => 'pengquanhua@ifanr.com' }
  s.source           = { :git => 'https://github.com/pqhifanr/PodLearn.git', :tag => s.version }
 
  s.ios.deployment_target = '9.0'
  s.source_files = 'PodLearn/*'
  s.dependency 'Moya', '<= 12.0.1'

  s.vendored_libraries = 'PodLearn/libWeChatSDK.a'
  s.resource = 'PodLearn/AlipaySDK.bundle'
  s.frameworks = "SystemConfiguration", "Security", "CoreTelephony", "CFNetwork","CoreGraphics", "QuartzCore", "CoreText", "CoreMotion"
  s.libraries = "z", "sqlite3.0", "c++"
  s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-Objc -all_load' }
  s.xcconfig = { 'OTHER_LDFLAGS' => '-ObjC -all_load' }
  s.pod_target_xcconfig = { 'HEADER_SEARCH_PATHS' => '$(PODS_ROOT)/PodLearn' }
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(PODS_ROOT)/PodLearn' }

  s.ios.vendored_frameworks = 'PodLearn/AlipaySDK.framework'
#  s.frameworks = "SystemConfiguration", "CoreTelephony", "QuartzCore", "CoreText", "CoreGraphics", "UIKit", "Foundation", "CFNetwork", "CoreMotion"
#  s.libraries = "z", "c++"
#  s.resource = 'PodLearn/AlipaySDK.bundle'
  #s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(PODS_CONFIGURATION_BUILD_DIR)/MinCloud/PayLibrary/AliPay/AlipaySDK.framework/Headers" }
  s.module_map = 'PodLearn/module.modulemap'
  s.static_framework = true
end
