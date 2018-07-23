//
//  ContainerViewController.swift
//  ContainerCoordinator
//
//  Created by Chris Myers on 7/23/18.
//  Copyright © 2018 CM. All rights reserved.
//

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
        contentContainerView.backgroundColor = .green
        
        // Do any additional setup after loading the view.
    }
}
