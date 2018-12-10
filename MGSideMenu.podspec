Pod::Spec.new do |s|

  s.name                = "MGSideMenu"
  s.version             = "1.0.0"
  s.summary             = "Highly customizable side menu controller. Has many effective animations!"
  s.description         = <<-DESC
                          Highly customizable side menu controller with many effective animations. Written with 'swift 4.1'.
                        DESC

  s.homepage            = "https://github.com/mustafagunes/MGSideMenu"
  s.screenshots         = "https://github.com/mustafagunes/MGSideMenu/raw/master/Resource/MGSideMenuSS.png"
  s.license             = { :type => "MIT", :file => "LICENSE" }
  s.author              = { "Mustafa GUNES" => "gunes149@gmail.com" }
  s.social_media_url    = "http://twitter.com/bashreks"
  s.platform            = :ios, "9.0"
  s.source              = { :git => "https://github.com/mustafagunes/MGSideMenu.git", :tag => s.version }
  s.source_files        = "MGSideMenu/Classes/**/*"
  # s.resource_bundles    = { 'image' => ['MGSideMenu/Classes/image/*.{png}'] }
  s.swift_version       = '4.1'
  s.frameworks          = 'UIKit'
  s.requires_arc = true
  
end
