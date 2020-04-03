//
//  PushButton.swift
//  UIPreview
//
//  Created by Ilya Shkolnik on 13.11.2019.
//  Copyright © 2019 Ilya Shkolnik. All rights reserved.
//

import UIKit

/// Button with Push title
final class PushButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        self.layer.borderWidth = 1
        self.layer.cornerRadius = 25
        self.setTitle("Push", for: UIControl.State())
        self.setTitleColor(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1), for: UIControl.State())
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

#if canImport(SwiftUI) && canImport(Combine)
import SwiftUI
import PreviewUIKit
@available(iOS 13.0, *) struct PushButtonProvider: PreviewProvider {
    static var previews: some View {
        PreviewView {
            PushButton(frame: CGRect(x: 0, y: 0, width: 150, height: 50))
        }.edgesIgnoringSafeArea(.all)
    }
}
#endif
