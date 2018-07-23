import UIKit

protocol ContainerViewControllerDelegate: class {
    func containerViewControllerDidPressButton(_ controller: ContainerViewController)
}

class ContainerViewController: UIViewController {
    @IBOutlet weak var contentContainerView: UIView!
    
    weak var delegate : ContainerViewControllerDelegate?
    
    init(delegate : ContainerViewControllerDelegate) {
        self.delegate = delegate
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        UIView.animate(withDuration: 4.0) {
            [weak self] in  self?.contentContainerView.backgroundColor = .green
        }
    }
}
