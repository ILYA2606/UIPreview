//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

final class ___FILEBASENAMEASIDENTIFIER___: UIView {
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
@available(iOS 13.0, *) struct ___FILEBASENAMEASIDENTIFIER___Provider: PreviewProvider {
    static var previews: some View {
        PreviewView<___FILEBASENAMEASIDENTIFIER___>().edgesIgnoringSafeArea(.all)
    }
}
#endif
