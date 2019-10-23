Pod::Spec.new do |s|
  s.name             = 'PodLearn'
  s.version          = '0.2.6'
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
  s.subspec 'Core' do |core|
    core.source_files = 'PodLearn/*.{swift}', 'PodLearn/PodLearn.h'
    core.dependency 'Moya', '<= 12.0.1'
  end

#  s.subspec 'Alipay' do |ali|
#    ali.resource = 'PodLearn/AlipaySDK.bundle'
#    ali.ios.vendored_frameworks = 'PodLearn/AlipaySDK.framework'
#    ali.frameworks = "SystemConfiguration", "CoreTelephony", "CFNetwork", "CoreGraphics", "QuartzCore", "CoreText", "CoreMotion", "UIKit", "Foundation"
#    ali.libraries = "z", "c++"
#    ali.pod_target_xcconfig = { 'HEADER_SEARCH_PATHS' => '$(PODS_ROOT)/PodLearn' }
#    ali.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(PODS_ROOT)/PodLearn' }
#  end
#
  s.subspec 'WeChat' do |wc|
    wc.source_files = 'PodLearn/*.{h}'
    wc.vendored_libraries = 'PodLearn/libWeChatSDK.a'
    wc.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-Objc -all_load' }
    wc.frameworks = "SystemConfiguration", "CoreTelephony", "Security", "CoreGraphics", "CFNetwork"
    wc.libraries = "z", "c++", "sqlite3.0"
    wc.xcconfig = { "HEADER_SEARCH_PATHS" => "$(PODS_ROOT)/PodLearn" }
  end
  s.module_map = 'PodLearn/module.modulemap'
   s.static_framework = true
end
