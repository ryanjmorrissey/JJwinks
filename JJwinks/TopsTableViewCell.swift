//
//  TopsTableViewCell.swift
//  JJwinks
//
//  Created by Ryan Morrissey on 4/27/18.
//  Copyright © 2018 Morrissey. All rights reserved.
//

import UIKit

class TopsTableViewCell: UITableViewCell {

    
    @IBOutlet weak var topsImage: UIImageView!
    @IBOutlet weak var topsLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func update(title: String) {
        topsLabel.text = title
        topsImage.image = UIImage(named: title)
    }
}
