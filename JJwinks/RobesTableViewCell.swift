//
//  RobesTableViewCell.swift
//  JJwinks
//
//  Created by Ryan Morrissey on 4/27/18.
//  Copyright © 2018 Morrissey. All rights reserved.
//

import UIKit

class RobesTableViewCell: UITableViewCell {

    
    @IBOutlet weak var robesLabel: UILabel!
    @IBOutlet weak var robesImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func update(title: String) {
        robesLabel.text = title
        robesImage.image = UIImage(named: title)
    }
}
