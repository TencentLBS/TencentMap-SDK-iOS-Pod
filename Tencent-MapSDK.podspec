

Pod::Spec.new do |spec|
  spec.name         = "Tencent-MapSDK"
  spec.version      = "4.4.2"
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

  spec.source       = { "http" => "https://mapapi.qq.com/sdk/map/iOS/TencentMapSDK_iOS_3D_v4.4.2.zip" }

  spec.frameworks = "UIKit", "CoreText", "CoreLocation","QuartzCore"

  spec.resources = "TencentMapSDK_iOS_3D_v4.4.2/sdk/QMapKit.framework/QMapKit.bundle"

  spec.vendored_frameworks = "TencentMapSDK_iOS_3D_v4.4.2/sdk/QMapKit.framework", "TencentMapSDK_iOS_3D_v4.4.2/sdk/QMapVisualPlugin.framework"

  spec.libraries = "c++", "sqlite3.0"

  spec.compiler_flags = "-ObjC"

  spec.subspec 'QMapKit' do |m|
    m.public_header_files = "TencentMapSDK_iOS_3D_v4.4.2/sdk/QMapKit.framework/Headers/*.h"

    m.source_files  = "TencentMapSDK_iOS_3D_v4.4.2/sdk/QMapKit.framework/Headers/*.{h}"

    m.vendored_frameworks = "TencentMapSDK_iOS_3D_v4.4.2/sdk/QMapKit.framework"
  end  

  spec.subspec 'QMapVisualPlugin' do |v|
    v.source_files = "TencentMapSDK_iOS_3D_v4.4.2/sdk/QMapVisualPlugin.framework/Headers/*.{h}"
    v.public_header_files = "TencentMapSDK_iOS_3D_v4.4.2/sdk/QMapVisualPlugin.framework/Headers/*.h"
    v.vendored_frameworks = "TencentMapSDK_iOS_3D_v4.4.2/sdk/QMapVisualPlugin.framework"
  end

  spec.subspec 'QMapSDKUtils' do |u|
    u.source_files = "TencentMapSDK_iOS_3D_v4.4.2/TencentMapSDK-Utils/SDK/QMapSDKUtils.framework/Headers/*.{h}"
    u.public_header_files = "TencentMapSDK_iOS_3D_v4.4.2/TencentMapSDK-Utils/SDK/QMapSDKUtils.framework/Headers/*.h"
    u.vendored_frameworks = "TencentMapSDK_iOS_3D_v4.4.2/TencentMapSDK-Utils/SDK/QMapSDKUtils.framework"
  end

end

