@version = "0.1.1"

Pod::Spec.new do |s|

  s.name         = "MGAlertUtility"
  s.version      = @version
  s.summary      = "An iOS Utility for presenting alerts"

  s.description  = <<-DESC
  A simple utility class with static methods for presenting a UIAlertController.
                   DESC

  s.homepage     = "https://github.com/mattga/MGAlertUtility"

  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Matthew Gardner" => "matthew@mgardner.me" }
  s.platform     = :ios

  s.source       = { :git => "https://github.com/mattga/MGAlertUtility.git", :tag => "v#{s.version}" }

  s.header_mappings_dir = "MGAlertUtility"
  s.source_files  = "MGAlertUtility/**/*.{h,m}"

end
