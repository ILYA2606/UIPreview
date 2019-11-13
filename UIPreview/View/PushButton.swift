//
//  PushButton.swift
//  UIPreview
//
//  Created by Ilya Shkolnik on 13.11.2019.
//  Copyright © 2019 Ilya Shkolnik. All rights reserved.
//

import UIKit

/// Кнопка с текстом Push
final class PushButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        self.layer.borderWidth = 1
        self.layer.cornerRadius = 25
        self.setTitle("Push", for: UIControl.State())
        self.setTitleColor(#colorLiteral(red: 1.0, green: 0.0, blue: 0.0, alpha: 1.0), for: UIControl.State())
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

#if canImport(SwiftUI) && canImport(Combine)
import SwiftUI
@available(iOS 13.0, *) struct PushButtonProvider: PreviewProvider {
    static var previews: some View {
        // Кастомный инициализатор для превью кнопки
        PreviewView {
            PushButton(frame: CGRect(x: 0, y: 0, width: 150, height: 50))
        }.edgesIgnoringSafeArea(.all)
    }
}
#endif
