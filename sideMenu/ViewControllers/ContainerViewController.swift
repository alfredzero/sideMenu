//
//  ContainerViewController.swift
//  sideMenu
//
//  Created by Alfredo Amezcua on 4/26/24.
//

import UIKit

class ContainerViewController: UIViewController {

    enum NaviState {
        case opened
        case closed
    }

    private var naviState: NaviState = .closed
    let naviBarVC = MenuViewController()
    let baseVC = HomeViewController()
    var navi: UINavigationController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = . systemMint
        addChildViewCs()
    }

    private func addChildViewCs() {
        
        // navi bar
        addChild(naviBarVC)
        view.addSubview(naviBarVC.view)
        naviBarVC.didMove(toParent: self)
        
        //base
        baseVC.delegate = self
        let navi = UINavigationController(rootViewController: baseVC)
        addChild(navi)
        view.addSubview(navi.view)
        navi.didMove(toParent: self)
        self.navi = navi
        
        
    }

}

extension ContainerViewController: HomeViewControllerDelegate {
    func didTapNavButton() {
        //animation for menu
        switch naviState {
        case .closed:
            //open navi
            UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: .curveEaseInOut){
                
                self.navi?.view.frame.origin.x = self.baseVC.view.frame.size.width - 100
            } completion: { [weak self] done in
                if done{
                    self?.naviState = .opened
                }
            }
        case .opened:
            //close navi
            UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: .curveEaseInOut){
                
                self.navi?.view.frame.origin.x = 0
            } completion: { [weak self] done in
                if done{
                    self?.naviState = .closed
                }
            }
        }
    }
}
