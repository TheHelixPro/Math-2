//
//  TableViewCell1.swift
//  Math
//
//  Created by D_Key on 08.08.2021.
//

import UIKit

class TableViewCell1: UITableViewCell {

    static let identifier = "TableViewCell1"
    
    static func nib() -> UINib{
        
        return UINib(nibName: "TableViewCell1", bundle: nil)
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
