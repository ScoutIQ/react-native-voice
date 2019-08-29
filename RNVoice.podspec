require "json"

Pod::Spec.new do |s|
  # NPM package specification
  package = JSON.parse(File.read(File.join(File.dirname(__FILE__), "package.json")))

  s.name         = "RNVoice"
  s.version      = package["version"]
  s.summary      = "1"
  s.homepage     = "https://github.com/ScoutIQ/react-native-voice"
  s.license      = "MIT"
  s.author       = { package["author"]["name"] => package["author"]["email"] }
  s.platforms    = { :ios => "9.0", :tvos => "9.0" }
  s.source       = { :git => "https://github.com/ScoutIQ/react-native-voice", :tag => "#{s.version}" }
  s.source_files = "ios/**/*.{h,m}"

  s.dependency "React"

end
