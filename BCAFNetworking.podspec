Pod::Spec.new do |s|
  s.name     = 'BCAFNetworking'
  s.version  = '3.2.1'
  s.license  = 'MIT'
  s.summary  = 'A delightful iOS and OS X networking framework.'
  s.homepage = 'https://github.com/AFNetworking/AFNetworking'
  s.social_media_url = 'https://twitter.com/AFNetworking'
  s.authors  = { 'Mattt Thompson' => 'm@mattt.me' }
  s.source   = { :git => 'https://github.com/DieberRoa/BCAFNetworking.git', :tag => s.version, :submodules => true }
  s.requires_arc = true
  
  s.public_header_files = 'BCAFNetworking/AFNetworking.h'
  s.source_files = 'BCAFNetworking/AFNetworking.h'
  
  pch_AF = <<-EOS
#ifndef TARGET_OS_IOS
  #define TARGET_OS_IOS TARGET_OS_IPHONE
#endif

#ifndef TARGET_OS_WATCH
  #define TARGET_OS_WATCH 0
#endif

#ifndef TARGET_OS_TV
  #define TARGET_OS_TV 0
#endif
EOS
  s.prefix_header_contents = pch_AF
  
  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.9'
  s.watchos.deployment_target = '2.0'
  s.tvos.deployment_target = '9.0'
  
  s.subspec 'Serialization' do |ss|
    ss.source_files = 'BCAFNetworking/AFURL{Request,Response}Serialization.{h,m}'
    ss.public_header_files = 'BCAFNetworking/AFURL{Request,Response}Serialization.h'
    ss.watchos.frameworks = 'MobileCoreServices', 'CoreGraphics'
    ss.ios.frameworks = 'MobileCoreServices', 'CoreGraphics'
    ss.osx.frameworks = 'CoreServices'
  end

  s.subspec 'Security' do |ss|
    ss.source_files = 'BCAFNetworking/AFSecurityPolicy.{h,m}'
    ss.public_header_files = 'BCAFNetworking/AFSecurityPolicy.h'
    ss.frameworks = 'Security'
  end

  s.subspec 'Reachability' do |ss|
    ss.ios.deployment_target = '8.0'
    ss.osx.deployment_target = '10.9'
    ss.tvos.deployment_target = '9.0'

    ss.source_files = 'BCAFNetworking/AFNetworkReachabilityManager.{h,m}'
    ss.public_header_files = 'BCAFNetworking/AFNetworkReachabilityManager.h'

    ss.frameworks = 'SystemConfiguration'
  end

  s.subspec 'NSURLSession' do |ss|
    ss.dependency 'BCAFNetworking/Serialization'
    ss.ios.dependency 'BCAFNetworking/Reachability'
    ss.osx.dependency 'BCAFNetworking/Reachability'
    ss.tvos.dependency 'BCAFNetworking/Reachability'
    ss.dependency 'BCAFNetworking/Security'

    ss.source_files = 'BCAFNetworking/AF{URL,HTTP}SessionManager.{h,m}', 'BCAFNetworking/AFCompatibilityMacros.h'
    ss.public_header_files = 'BCAFNetworking/AF{URL,HTTP}SessionManager.h', 'BCAFNetworking/AFCompatibilityMacros.h'
  end

  s.subspec 'UIKit' do |ss|
    ss.ios.deployment_target = '8.0'
    ss.tvos.deployment_target = '9.0'
    ss.dependency 'BCAFNetworking/NSURLSession'

    ss.public_header_files = 'UIKit+AFNetworking/*.h'
    ss.source_files = 'UIKit+AFNetworking'
  end
end
