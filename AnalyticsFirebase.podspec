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
    s.requires_arc = true

    s.source_files = 'Sources/SegmentFirebase/**/*'
    s.default_subspec = 'Core'
    s.static_framework = true

    s.dependency 'Segment'
    s.dependency 'Firebase', '~> 11.0.0'
    s.dependency 'Firebase/Core','~> 11.0.0'
    s.dependency 'FirebaseAnalytics', '~> 11.0.0'
    s.subspec 'Core' do |core|
        #For users who only want the core Firebase package
     end
    s.subspec 'DynamicLinks' do |dynamiclinks|
        # This will bundle in Firebase Dynamic Link support
        dynamiclinks.dependency 'Firebase/DynamicLinks'
    end
  end
