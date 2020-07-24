

Pod::Spec.new do |spec|
  spec.name         = "Tencent-MapSDK"
  spec.version      = "4.3.2"
  spec.summary      = "Tencent iOS map SDK."

  
  spec.description  = <<-DESC
                        A podspec for Tencent iOS map SDK deployment starts from v4.2.6.2
                   DESC

  spec.homepage     = "https://lbs.qq.com/ios_v1/index.html"

  spec.license      = {:type => "CopyRight", :text => "Copyright © 1998-2018 Tencent All Rights Reserved"}
  
  spec.author       = { "TencentLBS" => "tencentlbspod@outlook.com" }

  spec.platform     = :ios, "8.0"

  spec.requires_arc = true


  spec.source       = { "http" => "https://wecar.myapp.com/myapp/mapwecar/shuttle/open_platform/iOS/TencentMapSDK_iOS_3D_v4.3.2.zip" }


  spec.public_header_files = "sdk/QMapKit.framework/Headers/*.h"

  spec.source_files  = "sdk/QMapKit.framework/Headers/*.{h}"


  spec.resources = "sdk/QMapKit.framework/QMapKit.bundle"

  spec.frameworks = "UIKit", "CoreText", "CoreLocation","QuartzCore"

  spec.libraries = "c++", "sqlite3.0"

  spec.ios.vendored_frameworks = "sdk/QMapKit.framework"

  spec.compiler_flags = "-ObjC"

end
