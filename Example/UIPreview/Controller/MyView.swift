//
//  MyView.swift
//  UIPreview
//
//  Created by Ilya Shkolnik on 15.11.2019.
//  Copyright © 2019 Ilya Shkolnik. All rights reserved.
//

import UIKit

final class MyView: UIView {
    // MARK: - UIView
    
    init() {
        super.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

#if canImport(SwiftUI) && canImport(Combine)
import SwiftUI
import PreviewUIKit
@available(iOS 13.0, *) struct MyViewProvider: PreviewProvider {
    static var previews: some View {
        PreviewView<MyView>().edgesIgnoringSafeArea(.all)
    }
}
#endif
