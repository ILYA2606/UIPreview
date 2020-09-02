//
//  FirstViewController.swift
//  UIPreview
//
//  Created by Ilya Shkolnik on 13.11.2019.
//  Copyright © 2019 Ilya Shkolnik. All rights reserved.
//

import SnapKit
import UIKit

/// First controller
final class FirstViewController: UIViewController {
    let button = PushButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        button.addTarget(self, action: #selector(showSecondScreen), for: .touchUpInside)
        view.addSubview(button)
        button.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.size.equalTo(CGSize(width: 100, height: 100))
        }
    }

    @objc private func showSecondScreen() {
        let secondViewController = SecondViewController(color: #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1))
        navigationController?.show(secondViewController, sender: nil)
    }

}

#if canImport(SwiftUI) && canImport(Combine)
import SwiftUI
@available(iOS 13.0, *) struct FirstViewControllerProvider: PreviewProvider {
    static var previews: some View {
        PreviewViewController {
            FirstViewController()
        }.edgesIgnoringSafeArea(.all)
    }
}
#endif
