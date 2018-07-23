import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var applicationWindow = UIWindow(frame: UIScreen.main.bounds)
    lazy var appCoordinator: AppCoordinator = AppCoordinator(window: self.applicationWindow)

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = applicationWindow
        appCoordinator.setup()
        return true
        
        
    }
}

