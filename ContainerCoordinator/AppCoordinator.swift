import Foundation
import UIKit

class AppCoordinator {
    
    private unowned let window: UIWindow
    private lazy var containerViewController = ContainerViewController(delegate : self)
    
    init(window: UIWindow) {
        self.window = window 
    }
    
    func setup() {
        window.rootViewController = containerViewController
        window.makeKeyAndVisible()
    }
}

extension AppCoordinator: ContainerViewControllerDelegate {
    func containerViewControllerDidPressButton(_ controller: ContainerViewController) {
        print("I got pressed.")
    }
    
    
}
