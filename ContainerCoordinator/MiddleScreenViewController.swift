import UIKit

protocol NavigationVCDelegate: class {
    func home()
}

protocol MiddleScreenViewControllerDelegate: NavigationVCDelegate {
    func proceed()
}

class MiddleScreenViewController: UIViewController {
    
    weak var delegate: MiddleScreenViewControllerDelegate?
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nil, bundle: nil)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func proceedPressed(_ sender: UIButton) {
        delegate?.proceed()
        print("proceed tapped")
    }
    
    @IBAction func homePressed(_ sender: UIButton) {
        delegate?.home()
        print("home tapped")
    }
}
