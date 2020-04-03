//
//  MainNavigationController.swift
//  UIPreview
//
//  Created by Ilya Shkolnik on 13.11.2019.
//  Copyright © 2019 Ilya Shkolnik. All rights reserved.
//

import UIKit

/// Main navigation controller
final class MainNavigationController: UINavigationController {}

#if canImport(SwiftUI) && canImport(Combine)
import SwiftUI
import PreviewUIKit
@available(iOS 13.0, *) struct MainNavigationControllerProvider: PreviewProvider {
    static var previews: some View {
        PreviewViewController {
            let firstViewController = FirstViewController()
            let navigationController = MainNavigationController(rootViewController: firstViewController)
            return navigationController
        }.edgesIgnoringSafeArea(.all)
    }
}
#endif
