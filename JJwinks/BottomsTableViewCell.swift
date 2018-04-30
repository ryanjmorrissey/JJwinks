//
//  BottomsTableViewCell.swift
//  JJwinks
//
//  Created by Ryan Morrissey on 4/27/18.
//  Copyright © 2018 Morrissey. All rights reserved.
//

import UIKit

class BottomsTableViewCell: UITableViewCell {

    @IBOutlet weak var bottomsLabel: UILabel!
    
    
    
    
    @IBOutlet weak var bottomsImage: UIImageView!
    
    
   
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func update(title: String) {
        bottomsLabel.text = title
        bottomsImage.image = UIImage(named: title)
    }
    
    
}
