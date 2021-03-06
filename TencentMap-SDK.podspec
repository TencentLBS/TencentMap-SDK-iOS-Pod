

Pod::Spec.new do |spec|

  spec.name         = "TencentMap-SDK"
  spec.version      = "4.3.3"
  spec.summary      = "Tencent iOS map SDK."

  
  spec.description  = <<-DESC
                        A podspec for Tencent iOS map SDK deployment starts from v4.2.6.2
                   DESC

  spec.homepage     = "https://lbs.qq.com/ios_v1/index.html"

  spec.license      = {:type => "CopyRight", :text => "Copyright © 1998-2018 Tencent All Rights Reserved"}
  
  spec.author       = { "TencentLBS" => "tencentlbspod@gmail.com" }

  spec.platform     = :ios, "8.0"

  spec.requires_arc = true


  spec.source       = { "http" => "https://mapapi.qq.com/sdk/map/iOS/TencentMapSDK_iOS_3D_v4.3.3.zip" }


  spec.public_header_files = "TencentMapSDK_iOS_3D_v4.3.3/sdk/QMapKit.framework/Headers/*.h"

  spec.source_files  = "TencentMapSDK_iOS_3D_v4.3.3/sdk/QMapKit.framework/Headers/*.{h}"


  spec.resources = "TencentMapSDK_iOS_3D_v4.3.3/sdk/QMapKit.framework/QMapKit.bundle"

  spec.frameworks = "UIKit", "CoreText", "CoreLocation","QuartzCore"

  spec.libraries = "c++", "sqlite3.0"

  spec.ios.vendored_frameworks = "TencentMapSDK_iOS_3D_v4.3.3/sdk/QMapKit.framework"

  spec.compiler_flags = "-ObjC"

end
