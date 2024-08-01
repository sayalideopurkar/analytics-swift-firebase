Pod::Spec.new do |s|
    s.name             = 'AnalyticsFirebase'
    s.module_name      = 'AnalyticsFirebase'
    s.version          = '1.3.6'
    s.summary          = 'Segment SDK for adding device mode plugin support for Firebase'
    s.homepage         = 'https://github.com/sayalideopurkar/analytics-swift-firebase'
    s.license          = { :type => 'MIT', :file => './LICENSE' }
    s.author           = { "Segment" => "friends@segment.com" }
    s.source           = { :git => 'git@github.com/sayalideopurkar/analytics-swift-firebase.git', :tag => s.version.to_s }
    s.ios.deployment_target = '13.0'
    s.swift_version = '5.0'
    s.source_files = 'Sources/**/*'
    s.dependency 'Segment', '~> 1.5.1'
    s.dependency 'Firebase', '~> 11.0.0'
  end
