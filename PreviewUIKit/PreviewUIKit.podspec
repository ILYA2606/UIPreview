Pod::Spec.new do |spec|
  spec.name         = "PreviewUIKit"
  spec.version      = "1.0.0"
  spec.summary      = "Code-based UI with Preview"
  spec.description  = "Code-based UI with Preview"
  spec.homepage     = "https://github.com/ILYA2606/UIPreview"
  spec.license      = { :type => "MIT" }
  spec.author       = { "Ilya Shkolnik" => "dev@darknessproduction.com" }
  spec.platform     = :ios, '9.0'
  spec.source       = { :git => "https://github.com/ILYA2606/UIPreview.git", :tag => spec.version }
  spec.source_files  = 'Pod/Classes/*.{swift,m,h}'
end
