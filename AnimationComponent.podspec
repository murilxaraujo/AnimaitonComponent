#
# Be sure to run `pod lib lint AnimationComponent.podspec' to ensure this is a
# valid spec before submitting.
#

Pod::Spec.new do |s|
  s.name             = 'AnimationComponent'
  s.version          = '0.1.0'
  s.summary          = 'Lottie animation component for Beagle BFF.'
  s.description      = 'Lottie vector animation component for Beagle BFF'
  s.homepage         = 'https://github.com/murilxaraujo/AnimationComponent'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'murilxaraujo' => 'muernandes@icloud.com' }
  s.source           = { :git => 'https://github.com/murilxaraujo/AnimationComponent.git', :tag => s.version.to_s }
  s.ios.deployment_target = '10.0'
  s.swift_version = '5.0'
  s.source_files = 'AnimationComponent/Classes/**/*'
  s.frameworks = 'UIKit'
  s.dependency 'lottie-ios'
  s.dependency 'Beagle'
  s.dependency 'YogaKit'
end
