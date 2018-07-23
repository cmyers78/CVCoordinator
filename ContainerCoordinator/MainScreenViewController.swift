import UIKit

protocol MainScreenViewControllerDelegate: class {
    func proceed(_ controller: MainScreenViewController)
}

class MainScreenViewController: UIViewController {
    
    weak var delegate: MainScreenViewControllerDelegate?
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nil, bundle: nil)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Loaded")
        // Do any additional setup after loading the view.
    }
    
    @IBAction func proceedTapped(_ sender: UIButton) {
        self.delegate?.proceed(self)
        print("did tap proceed")
    }

}
