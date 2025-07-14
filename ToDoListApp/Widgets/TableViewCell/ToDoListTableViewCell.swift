//
//  ToDoListTableViewCell.swift
//  ToDoListApp
//
//  Created by Şerif Botan Kapcuk on 14.07.2025.
//

import UIKit

class ToDoListTableViewCell: UITableViewCell {
    
     
    static var identifier = "ToDoListTableViewCell"
    static func nib() -> UINib {
        UINib(nibName: identifier, bundle: nil)
    }

    @IBOutlet weak var toDoLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        toDoLabel.font = UIFont.TDBody
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
