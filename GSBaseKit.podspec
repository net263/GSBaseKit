#
#  Be sure to run `pod spec lint GSBaseKit.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|


  spec.name         = "GSBaseKit"
  spec.version      = "3.7.11"
  spec.summary      = "Net 263 SDK base component"
  spec.platform = :ios
  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  spec.description  = <<-DESC
  GSBase contain GSCommonKit.framework GPUImage.framework GSDocKit.framework and libs that about FFMPEG and faad
                   DESC

  spec.homepage     = "https://github.com/net263/GSBaseKit.git"
  spec.license      = "MIT"
  # spec.license      = { :type => "MIT", :file => "FILE_LICENSE" }

  spec.author             = { "net263" => "277715243@qq.com" }


  spec.source       = { :git => "https://github.com/net263/GSBaseKit.git", :tag => "#{spec.version}" }
  spec.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-lObjC' }
  spec.vendored_frameworks = 'GSCommonKit.framework','GPUImage.framework','GSDocKit.framework','GSHongbaoKit.framework'
  spec.vendored_libraries = 'Libs/*.a', 'Libs/ffmpeg/*.a'
  spec.static_framework = true
  spec.libraries = 'z', 'c++','iconv','icucore'
  spec.ios.frameworks = 'AudioToolbox','VideoToolbox','CoreImage'
  spec.frameworks = 'UIKit', 'GLKit','OpenAL'
end
