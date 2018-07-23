import Foundation
import UIKit

class AppCoordinator {
    
    private unowned let window: UIWindow
    private lazy var containerViewController = ContainerViewController()
    
    init(window: UIWindow) {
        self.window = window 
    }
    
    func setup() {
        window.rootViewController = containerViewController
        window.makeKeyAndVisible()
    }
}
