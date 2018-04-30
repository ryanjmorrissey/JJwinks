//
//  WeekenderTableViewCell.swift
//  JJwinks
//
//  Created by Ryan Morrissey on 4/27/18.
//  Copyright © 2018 Morrissey. All rights reserved.
//

import UIKit

class WeekenderTableViewCell: UITableViewCell {
    @IBOutlet weak var weekenderImage: UIImageView!
    
    @IBOutlet weak var weekenderLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func update(title: String) {
        weekenderLabel.text = title
        weekenderImage.image = UIImage(named: title)
    }
}
