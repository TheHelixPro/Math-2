//
//  CollectionViewCell1.swift
//  Math
//
//  Created by D_Key on 08.08.2021.
//

import UIKit

class CollectionViewCell1: UICollectionViewCell {
    @IBOutlet weak var NumLevel: UILabel!
    @IBOutlet weak var Star_1: UIImageView!
    @IBOutlet weak var Star_2: UIImageView!
    @IBOutlet weak var Star_3: UIImageView!
    
    static let identifier = "CollectionViewCell1"
    
    static func nib() -> UINib{
        
        return UINib(nibName: "CollectionViewCell1", bundle: nil)
    }
     override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    public func configure(with task: Tasks){
        
        
        
        
    }
}
