#
#  Be sure to run `pod spec lint semaphr.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  spec.name         = "Semaphr"
  spec.version      = "1.1.0"
  spec.summary      = "Semaphr is a kill switch and notification library for your mobile apps."

  spec.description  = <<-DESC
  By keeping your users informed and minimizing downtime, semaphr can help improve customer satisfaction and loyalty.
                   DESC

  spec.homepage     = "https://semaphr.com"

  spec.license      = { :type => "MIT", :file => "LICENSE" }

  spec.author             = { "Semaphr" => "info@semaphr.com" }
  spec.social_media_url   = "https://twitter.com/semaphr_"

  spec.platform     = :ios
  spec.ios.deployment_target = "15.0"
   spec.swift_version = '5.0'

  spec.source       = { :git => "https://github.com/semaphr/iOS.git", :tag => "#{spec.version}" }
  spec.source_files  = "Sources/**/*.{h,m,swift,xib}"

  spec.resource_bundles = {'semaphr-assets' => ['Sources/**/*.{xib,storyboard,xcassets,bundle,png}'] }

end
