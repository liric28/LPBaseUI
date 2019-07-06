
Pod::Spec.new do |spec|

  spec.name         = "LPBaseUI"
  spec.version      = "0.0.1"
  spec.summary      = "A short description of LPBaseUI."
  spec.description  = "A utility class that makes it easy to create a UI"
  spec.homepage     = "https://github.com/liric28/LPBaseUI"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "lipan" => "417614561@qq.com" }
  spec.platform     = :ios, "5.0"
  spec.source       = { :git => "https://github.com/liric28/LPBaseUI.git", :tag => spec.version }
  spec.source_files  = "LPBaseUI/LPBaseUI/*.{h,m}"

end
