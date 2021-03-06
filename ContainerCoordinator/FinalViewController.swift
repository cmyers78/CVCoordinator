import UIKit

protocol FinalViewControllerDelegate: NavigationVCDelegate {
    
}

class FinalViewController: UIViewController {
    
    weak var delegate: FinalViewControllerDelegate?
    
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
    
    @IBAction func homePressed(_ sender: UIButton) {
        delegate?.home()
    }
}
