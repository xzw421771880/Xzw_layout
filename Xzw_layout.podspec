
Pod::Spec.new do |s|


  s.name         = "Xzw_layout"
  s.version      = "0.0.1"
  s.summary      = "Xzw_layout for iOS develop"

 
  s.description  = <<-DESC
                  this project provide Xzw_layout for iOS developer 
                   DESC

  s.homepage     = "https://github.com/xzw421771880/Xzw_layout"

 #s.license      = "MIT"
  s.license      = { :type => "MIT", :file => "LICENSE" }
 
  s.author             = { "xzw421771880" => "421771880@qq.com" }
  s.platform     = :ios, "7.0"


  s.source       = { :git => "https://github.com/xzw421771880/Xzw_layout.git", :tag => "0.0.1" }

  s.source_files  = "Xzw_layout", "Xzw_layout/**/*.{h,m}"
  s.exclude_files = "Classes/Exclude"
  s.requires_arc = true

end
