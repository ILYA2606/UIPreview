//
//  SecondViewController.swift
//  UIPreview
//
//  Created by Ilya Shkolnik on 13.11.2019.
//  Copyright © 2019 Ilya Shkolnik. All rights reserved.
//

import UIKit

/// Второй контроллер
final class SecondViewController: BaseViewController {
    private var color: UIColor
    
    init(color: UIColor) {
        self.color = color
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setupUI() {
        view.backgroundColor = color
    }
}

#if canImport(SwiftUI) && canImport(Combine)
import SwiftUI
@available(iOS 13.0, *) struct SecondViewControllerProvider: PreviewProvider {
    static var previews: some View {
        PreviewViewController {
            SecondViewController(color: #colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1))
        }.edgesIgnoringSafeArea(.all)
    }
}
#endif

