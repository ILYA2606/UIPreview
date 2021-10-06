Pod::Spec.new do |spec|
  spec.name          = "PreviewUIKit"
  spec.version       = "2.0.4"
  spec.description   = "Code-based UI with Preview"
  spec.summary       = "Canvas Preview for UIKit"
  spec.homepage      = "https://github.com/ILYA2606/UIPreview"
  spec.license       = { :type => 'MIT', :file => 'LICENSE' }
  spec.author        = { "Ilya Shkolnik" => "dev@darknessproduction.com" }
  spec.platform      = :ios, '13.0'
  spec.source        = { :git => "https://github.com/ILYA2606/UIPreview.git", :tag => spec.version }
  spec.source_files  = 'Sources/PreviewUIKit/**/*.{swift,m,h}'
  spec.swift_version = '5.5'
end
