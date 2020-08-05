require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-images-merge"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  react-native-images-merge
                   DESC
  s.homepage     = "https://github.com/cristea2017/react-native-images-merge"
  # brief license entry:
  s.license      = "MIT"
  # optional - use expanded license entry instead:
  # s.license    = { :type => "MIT", :file => "LICENSE" }
  s.authors      = { "cristea2017" => "victor.kristea@mail.ru" }
  s.platforms    = { :ios => "9.0" }
  s.source       = { :git => "https://github.com/cristea2017/react-native-images-merge.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,c,m,swift}"
  s.requires_arc = true

  s.dependency "React"
  # ...
  # s.dependency "..."
end

