Pod::Spec.new do |spec|
  spec.name         = "DPPreviewProvider"
  spec.version      = "1.0.0"
  spec.summary      = "Preview Provider"
  spec.description  = "Preview Provider"
  spec.homepage     = "https://github.com/ILYA2606/UIPreview"
  spec.license      = "MIT (example)"
  spec.license      = { :type => "MIT" }
  spec.author             = { "Ilya Shkolnik" => "dev@darknessproduction.com" }
  spec.platform                = :ios, '9.0'
  spec.source       = { :git => "https://github.com/ILYA2606/UIPreview.git" }
  spec.source_files  = 'Pod/Classes/**/*'
end
