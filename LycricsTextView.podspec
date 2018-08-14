#
# Be sure to run `pod lib lint LycricsTextView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LycricsTextView'
  s.version          = '0.2.0'
  s.summary          = 'LycricsTextView is animating textview with swift. Color change character and scrooling textview.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: LycricsTextView is animating textview with swift. Color change character and scrooling textview.
                       DESC

  s.homepage         = 'https://github.com/barankaraoguzzz/LycricsTextView.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'baran.karaoguz@ogr.sakarya.edu.tr' => 'baran.karaoguz@ogr.sakarya.edu.tr' }
  s.source           = { :git => 'https://github.com/barankaraoguzzz/LycricsTextView.git', :tag => s.version.to_s }
  

  s.ios.deployment_target = '8.0'

  s.source_files = 'LycricsTextView/Classes/**/*'
  
  # s.resource_bundles = {
  #   'LycricsTextView' => ['LycricsTextView/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
