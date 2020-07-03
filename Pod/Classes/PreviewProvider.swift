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
    private var constructorHandler: ConstructorHandler

    /// Initializer with contructor closure
    /// - Parameter constructorHandler: Closure for custom contructor
public init(_ constructorHandler: @escaping ConstructorHandler) {
        self.constructorHandler = constructorHandler
    }

    public func makeUIViewController(
        context _: UIViewControllerRepresentableContext<PreviewViewController>
    ) -> UIViewControllerType {
        constructorHandler()
    }

    public func updateUIViewController(
        _: UIViewControllerType,
        context _: UIViewControllerRepresentableContext<PreviewViewController>
    ) {}
}

/// Preview of UIView
@available(iOS 13.0, *) public struct PreviewView<T: UIView>: UIViewControllerRepresentable {
    /// Size type
    public enum SizeType {
        /// Automatic by view size
        case auto
        /// Automatic height and full width with horizontal inset
        case autoHeight(horizontalInset: CGFloat = 0)
        /// Full width and height with insets
        case full(insets: UIEdgeInsets = .zero)
    }
    public typealias UIViewControllerType = UIViewController
    public typealias ConstructorHandler = () -> (T)
    private var constructorHandler: ConstructorHandler
    private var sizeType: SizeType

    /// Initializer with contructor closure
    /// - Parameter sizeType: Size type
    /// - Parameter constructorHandler: Closure for custom contructor
    public init(sizeType: SizeType = .auto, constructorHandler: @escaping ConstructorHandler) {
        self.constructorHandler = constructorHandler
        self.sizeType = sizeType
    }

    public func makeUIViewController(
        context _: UIViewControllerRepresentableContext<PreviewView>
    ) -> UIViewControllerType {
        makeViewController(from: constructorHandler())
    }

    public func updateUIViewController(
        _: UIViewControllerType,
        context _: UIViewControllerRepresentableContext<PreviewView>
    ) {}

    /// Make UIViewController with view in center
    /// - Parameter view: View for placing in center
    private func makeViewController(from view: T) -> UIViewControllerType {
        let controller = UIViewControllerType()
        controller.view.addSubview(view)
        switch sizeType {
        case .auto:
            let viewSize = view.systemLayoutSizeFitting(controller.view.frame.size)
            let viewOrigin = CGPoint(
                x: controller.view.center.x - viewSize.width / 2,
                y: controller.view.center.y - viewSize.height / 2
            )
            view.frame = CGRect(
                origin: viewOrigin,
                size: view.systemLayoutSizeFitting(controller.view.frame.size)
            )
        case .autoHeight(let horizontalInset):
            var viewSize = controller.view.frame.size
            let width = controller.view.frame.width - 2 * horizontalInset
            viewSize.width = width
            
            viewSize = view.systemLayoutSizeFitting(
                viewSize,
                withHorizontalFittingPriority: .required,
                verticalFittingPriority: .fittingSizeLevel
            )
            view.frame = CGRect(
                x: horizontalInset,
                y: controller.view.center.y - viewSize.height / 2,
                width: width,
                height: viewSize.height
            )
        case .full(let insets):
            view.frame = CGRect(
                x: insets.left,
                y: insets.top,
                width: controller.view.frame.width - insets.left - insets.right,
                height: controller.view.frame.height - insets.top - insets.bottom
            )
        }
        return controller
    }
}
#endif
