//
//  OccurrencyTableViewCell.swift
//  hackatonApp
//
//  Created by Jully Nobre on 18/11/18.
//  Copyright © 2018 Jully Nobre. All rights reserved.
//

import UIKit

class OccurrencyTableViewCell: UITableViewCell {

    @IBOutlet weak var postImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.postImageView.layer.cornerRadius = 25
        self.postImageView.layer.masksToBounds = true
        self.postImageView.image = UIImage.init(named: "bg")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
