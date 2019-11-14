//
//  BaseViewController.swift
//  UIPreview
//
//  Created by Ilya Shkolnik on 13.11.2019.
//  Copyright © 2019 Ilya Shkolnik. All rights reserved.
//

import UIKit

/// Базовый контроллер
class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        // Переопределить в дочерних классах
    }
}
