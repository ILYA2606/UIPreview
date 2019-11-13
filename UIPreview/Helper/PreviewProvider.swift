//
//  PreviewProvider.swift
//  UIPreview
//
//  Created by Ilya Shkolnik on 13.11.2019.
//  Copyright © 2019 Ilya Shkolnik. All rights reserved.
//

#if canImport(SwiftUI) && canImport(Combine)
import SwiftUI

/// Превью контроллера
@available(iOS 13.0, *) struct PreviewViewController<T: UIViewController>: UIViewControllerRepresentable {
    typealias UIViewControllerType = T
    typealias InitHandler = () -> (UIViewControllerType)
    private var initHandler: InitHandler?
    
    /// Инициализатор с конструктором
    /// - Parameter initHandler: Блок для кастомного конструктора
    init(_ initHandler: InitHandler? = nil) {
        self.initHandler = initHandler
    }

    func makeUIViewController(
        context: UIViewControllerRepresentableContext<PreviewViewController>
    ) -> UIViewControllerType {
        return initHandler?() ?? UIViewControllerType()
    }

    func updateUIViewController(
        _ uiViewController: UIViewControllerType,
        context: UIViewControllerRepresentableContext<PreviewViewController>
    ) {}
}

/// Превью вьюшки
@available(iOS 13.0, *) struct PreviewView<T: UIView>: UIViewControllerRepresentable {
    typealias UIViewControllerType = UIViewController
    typealias InitHandler = () -> (T)
    private var initHandler: InitHandler?
    
    /// Инициализатор с конструктором
    /// - Parameter initHandler: Блок для кастомного конструктора
    init(_ initHandler: InitHandler? = nil) {
        self.initHandler = initHandler
    }

    func makeUIViewController(
        context: UIViewControllerRepresentableContext<PreviewView>
    ) -> UIViewControllerType {
        return makeViewController(from: initHandler?() ?? T())
    }

    func updateUIViewController(
        _ uiViewController: UIViewControllerType,
        context: UIViewControllerRepresentableContext<PreviewView>
    ) {}
    
    /// Создаем контроллер с вьюшкой, размещенной по центру
    /// - Parameter view: Вьюшка
    private func makeViewController(from view: T) -> UIViewControllerType {
        let controller = UIViewControllerType()
        controller.view.addSubview(view)
        let viewSize = view.frame.size
        view.frame = CGRect(
            x: UIScreen.main.bounds.width / 2.0 - viewSize.width / 2.0,
            y: UIScreen.main.bounds.height / 2.0 - viewSize.height / 2.0,
            width: viewSize.width,
            height: viewSize.height
        )
        return controller
    }
}
#endif
