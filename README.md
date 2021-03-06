![CocoaPods](https://cocoapod-badges.herokuapp.com/v/PreviewUIKit/badge.png)
![SPM](https://img.shields.io/badge/SPM-supported-DE5C43.svg?style=flat)

# PreviewUIKit
Code-based UI development with Canvas Preview

## Requirements:
- Xcode 11
- macOS Catalina
- CocoaPods

![Screenshot](/resources/1.png)

## Features:
- UI with Canvas Preview (SwiftUI-like)
- No more Storyboard and XIB
- UIKit fast debugging 
- Supports iOS 9+ projects
- Xcode templates and snippets
- Ability preview with custom initialize
- Compactible with SnapKit and others code-based UI development

![Demo](/resources/demo.mov)
![Demo](/resources/demo2.mov)
![Demo](/resources/demo3.mov)

## Installation
- Add `PreviewUIKit` in your iOS Project with CocoaPods:
```ruby
pod 'PreviewUIKit', '~> 1.0.0'
```
- Install Xcode templates: Contents of XcodeTemplates folder copy to <ins>~/Library/Developer/Xcode/Templates/File Templates/User Templates</ins> (Create this folders if needed)
- Install Xcode snippets: Contents of XcodeSnippets folder copy to <ins>~/Library/Developer/Xcode/UserData/CodeSnippets</ins> (Create this folders if needed)

## How to use:

- For new UIView/UIViewController subclasses just add new class file from Xcode Template  
![Screenshot](/resources/2.png)
- For exists UIView/UIViewController subclasses just use snippets with keywords: PreviewViewController, PreviewView, PreviewViewControllerCustom and PreviewViewCustom
![Screenshot](/resources/3.png)
![Screenshot](/resources/4.png)
- Enable Canvas (COMMAND+OPTION+ENTER) and Refresh (COMMAND+OPTION+P)
- Turn on 'Editor/Previews/Automatically Refresh Canvas'
