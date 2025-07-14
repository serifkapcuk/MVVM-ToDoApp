//
//  ToDoListViewController.swift
//  ToDoListApp
//
//  Created by Şerif Botan Kapcuk on 11.07.2025.
//

import UIKit
import Firebase

class ToDoListViewController: UIViewController {
    
    var viewModel = ToDoListViewModel()
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
        
    }
    private func setupUI(){
        titleLabel.font = UIFont.TDTitle
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(ToDoListTableViewCell.nib(), forCellReuseIdentifier: ToDoListTableViewCell.identifier)
    }
}

extension ToDoListViewController:UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ToDoListTableViewCell.identifier, for: indexPath) as! UITableViewCell
        return cell
    }
    
}

extension ToDoListViewController:UITableViewDelegate {
    
}
