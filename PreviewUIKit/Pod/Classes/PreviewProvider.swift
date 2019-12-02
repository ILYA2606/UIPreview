//
//  PreviewProvider.swift
//  PreviewUIKit
//
//  Created by Ilya Shkolnik on 13.11.2019.
//  Copyright © 2019 Ilya Shkolnik. All rights reserved.
//

#if canImport(SwiftUI) && canImport(Combine)
import SwiftUI

/// Preview of UIViewController
@available(iOS 13.0, *) public struct PreviewViewController<T: UIViewController>: UIViewControllerRepresentable {
    public typealias UIViewControllerType = T
    public typealias ConstructorHandler = () -> (UIViewControllerType)
    private var constructorHandler: ConstructorHandler?
    
    /// Initializer with contructor closure
    /// - Parameter constructorHandler: Closure for custom contructor
    public init(_ constructorHandler: ConstructorHandler? = nil) {
        self.constructorHandler = constructorHandler
    }

    public func makeUIViewController(
        context: UIViewControllerRepresentableContext<PreviewViewController>
    ) -> UIViewControllerType {
        return constructorHandler?() ?? UIViewControllerType()
    }

    public func updateUIViewController(
        _ uiViewController: UIViewControllerType,
        context: UIViewControllerRepresentableContext<PreviewViewController>
    ) {}
}

/// Preview of UIView
@available(iOS 13.0, *) public struct PreviewView<T: UIView>: UIViewControllerRepresentable {
    public typealias UIViewControllerType = UIViewController
    public typealias ConstructorHandler = () -> (T)
    private var constructorHandler: ConstructorHandler?
    
    /// Initializer with contructor closure
    /// - Parameter constructorHandler: Closure for custom contructor
    public init(_ constructorHandler: ConstructorHandler? = nil) {
        self.constructorHandler = constructorHandler
    }

    public func makeUIViewController(
        context: UIViewControllerRepresentableContext<PreviewView>
    ) -> UIViewControllerType {
        return makeViewController(from: constructorHandler?() ?? T())
    }

    public func updateUIViewController(
        _ uiViewController: UIViewControllerType,
        context: UIViewControllerRepresentableContext<PreviewView>
    ) {}
    
    /// Make UIViewController with view in center
    /// - Parameter view: View for placing in center
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
