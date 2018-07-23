import UIKit



class ContainerViewController: UIViewController {
    @IBOutlet weak var contentContainerView: UIView!
    
    let contentNavController : UINavigationController
    let mainScreenVC: MainScreenViewController
    let middleScreenVC: MiddleScreenViewController
    let finalVC: FinalViewController
    init() {
        self.mainScreenVC = MainScreenViewController()
        self.middleScreenVC = MiddleScreenViewController()
        self.finalVC = FinalViewController()
        contentNavController = UINavigationController(rootViewController: mainScreenVC)
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        contentNavController.isNavigationBarHidden = true
        setUpChildViewController(viewController: contentNavController, containerView: contentContainerView)
        contentNavController.viewControllers.append(contentsOf: [finalVC, middleScreenVC])
        mainScreenVC.delegate = self
        middleScreenVC.delegate = self
    }
}

extension ContainerViewController: MainScreenViewControllerDelegate {
    func proceed(_ controller: MainScreenViewController) {
        contentNavController.pushViewController(MiddleScreenViewController(), animated: true)
    }
}

extension ContainerViewController: MiddleScreenViewControllerDelegate {
    func proceed() {
        contentNavController.pushViewController(FinalViewController(), animated: true)
    }
    
    func home() {
        contentNavController.popToRootViewController(animated: true)
    }
    
    
}
extension UIViewController {
    func setUpChildViewController(viewController: UIViewController, containerView: UIView) {
        addChildViewController(viewController)
        
        containerView.addSubview(viewController.view)
        
        let childView = viewController.view
        childView?.translatesAutoresizingMaskIntoConstraints = false
        
        let hConstraints = NSLayoutConstraint.constraints(withVisualFormat: "H:|[v]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v": childView!])
        let vConstraints = NSLayoutConstraint.constraints(withVisualFormat: "V:|[v]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v": childView!])
        containerView.addConstraints(hConstraints)
        containerView.addConstraints(vConstraints)
        
        viewController.didMove(toParentViewController: self)
    }
}
