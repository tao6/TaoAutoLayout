#
#  Be sure to run `pod spec lint TaoAutoLayout.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "TaoAutoLayout"
  s.version      = "0.0.3"
  s.summary      = "This is a layout framework for swift."
  s.homepage     = "https://github.com/tao6/TaoAutoLayout"
  s.license      = 'MIT'
  s.authors      = {'tao6' => 'tao6chn@yeah.net'}
  s.platform     = :ios, '8.0'
  s.source       = {:git => 'https://github.com/tao6/TaoAutoLayout.git', :tag => s.version}
  s.source_files = 'TaoAutoLayout/**/*.{swift}' 
  s.requires_arc = true
end
