//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

final class ___FILEBASENAMEASIDENTIFIER___: UIViewController {
    // MARK: - UIViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

#if canImport(SwiftUI) && canImport(Combine)
import SwiftUI
import DPPreviewProvider
@available(iOS 13.0, *) struct ___FILEBASENAMEASIDENTIFIER___Provider: PreviewProvider {
    static var previews: some View {
        PreviewView<___FILEBASENAMEASIDENTIFIER___>().edgesIgnoringSafeArea(.all)
    }
}
#endif
