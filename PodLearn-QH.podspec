Pod::Spec.new do |s|
  s.name             = 'PodLearn-QH'
  s.version          = '0.0.4'
  s.summary          = '学习 pod'
 
  s.description      = <<-DESC
学习
                       DESC
 
  s.swift_version    = '4.2'
  s.homepage         = 'https://cloud.minapp.com/'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'pengquanhua' => 'pengquanhua@ifanr.com' }
  s.source           = { :git => 'https://github.com/pqhifanr/PodLearn.git', :tag => s.version }
 
  s.ios.deployment_target = '9.0'
  s.source_files = 'PodLearn/*'
  s.dependency 'Moya', '<= 12.0.1'
#  s.dependency 'AlipaySDK-iOS'
  s.module_map = 'PodLearn/module.modulemap'
  s.preserve_path = 'PodLearn/module.modulemap'

s.ios.vendored_frameworks = ‘PodLearn/Library/AlipaySDK.framework'
s.frameworks = "SystemConfiguration", "CoreTelephony", "QuartzCore", "CoreText", "CoreGraphics", "UIKit", "Foundation", "CFNetwork", "CoreMotion"
s.libraries = "z", "c++"
s.resource = 'PodLearn/Library/AlipaySDK.bundle'
#s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(PODS_CONFIGURATION_BUILD_DIR)/MinCloud/PayLibrary/AliPay/AlipaySDK.framework/Headers" }
s.static_framework = true 
end

