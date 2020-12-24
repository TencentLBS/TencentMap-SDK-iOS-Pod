

Pod::Spec.new do |spec|
  spec.name         = "Tencent-MapSDK"
  spec.version      = "4.3.9.3"
  spec.summary      = "Tencent iOS map SDK."

  spec.description  = <<-DESC
                        A podspec for Tencent iOS map SDK deployment starts from v4.2.6.2
                   DESC

  spec.homepage     = "https://lbs.qq.com/mobile/iOSMapSDK/mapGuide/summary"

  spec.license      = {:type => "CopyRight", :text => "Copyright © 1998-2018 Tencent All Rights Reserved"}
  
  spec.author       = { "TencentLBS" => "tencentlbspod@outlook.com" }

  spec.platform     = :ios, "8.0"

  spec.requires_arc = true

  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}

  spec.source       = { "http" => "https://mapapi.qq.com/sdk/map/iOS/TencentMapSDK_iOS_3D_v4.3.9.3.zip" }

  spec.public_header_files = "TencentMapSDK_iOS_3D_v4.3.9.3/sdk/QMapKit.framework/Headers/*.h"

  spec.source_files  = "TencentMapSDK_iOS_3D_v4.3.9.3/sdk/QMapKit.framework/Headers/*.{h}"

  spec.resources = "TencentMapSDK_iOS_3D_v4.3.9.3/sdk/QMapKit.framework/QMapKit.bundle"

  spec.frameworks = "UIKit", "CoreText", "CoreLocation","QuartzCore"

  spec.libraries = "c++", "sqlite3.0"

  spec.ios.vendored_frameworks = "TencentMapSDK_iOS_3D_v4.3.9.3/sdk/QMapKit.framework"

  spec.compiler_flags = "-ObjC"

end
