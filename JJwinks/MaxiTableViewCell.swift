//
//  MaxiTableViewCell.swift
//  JJwinks
//
//  Created by Ryan Morrissey on 4/27/18.
//  Copyright © 2018 Morrissey. All rights reserved.
//

import UIKit

class MaxiTableViewCell: UITableViewCell {

    
    @IBOutlet weak var maxiLabel: UILabel!
    
    @IBOutlet weak var maxiImage: UIImageView!
   
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func update(title: String) {
        maxiLabel.text = title
        maxiImage.image = UIImage(named: title)
    }
}
