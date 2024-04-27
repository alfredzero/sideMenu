//
//  MenuViewController.swift
//  sideMenu
//
//  Created by Alfredo Amezcua on 4/26/24.
//

import UIKit

class MenuViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    enum NaviOptions: String, CaseIterable {
        case base = "Base"
        case info = "More Info"
        case contact = "Contact Us"
        case setting = " Settings"
    }

    
    private let tableView: UITableView = {
        let table = UITableView()
        table.register(UITableView.self, forCellReuseIdentifier: "cell" )
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        view.backgroundColor = UIColor(red: 69/255.0, green: 69/255.0, blue: 69/255.0, alpha: 1)    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
