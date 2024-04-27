//
//  HomeViewController.swift
//  sideMenu
//
//  Created by Alfredo Amezcua on 4/26/24.
//

import UIKit


protocol HomeViewControllerDelegate: AnyObject {
    func didTapNavButton()
}
class HomeViewController: UIViewController {
    
    weak var delegate: HomeViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemOrange
        title = "Base"
        
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "list.bullet"), style: .done, target: self, action: #selector(didTapNavButton))
    }
    
    @objc func didTapNavButton(){
        delegate?.didTapNavButton()
    }
}
