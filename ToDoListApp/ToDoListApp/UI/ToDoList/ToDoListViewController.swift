//
//  ToDoListViewController.swift
//  ToDoListApp
//
//  Created by Şerif Botan Kapcuk on 11.07.2025.
//

import UIKit

class ToDoListViewController: UIViewController {
    
    var viewModel = ToDoListViewModel()
    
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.font = UIFont.TDTitle

    }
}
