Pod::Spec.new do |s|
  s.name             = 'PodLearn'
  s.version          = '0.0.1'
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
  s.source_files = 'PodLearn/*.swift'
  s.dependency 'Moya', '<= 12.0.1'
end

