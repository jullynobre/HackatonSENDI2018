//
//  PointsView.swift
//  hackatonApp
//
//  Created by Jully Nobre on 18/11/18.
//  Copyright © 2018 Jully Nobre. All rights reserved.
//

import UIKit

class PointsView: UIView {

    @IBOutlet weak var validPointsView: UIView!
    @IBOutlet weak var allPointsView: UIView!
    
    override func draw(_ rect: CGRect) {
        // Drawing code
        self.allPointsView.layer.borderWidth = 2
        self.allPointsView.layer.borderColor = UIColor.init(red: 0x00, green: 0x7A, blue: 0xFF).cgColor
        
        self.validPointsView.layer.borderWidth = 2
        self.validPointsView.layer.borderColor = UIColor.init(red: 0x00, green: 0x7A, blue: 0xFF).cgColor
        
        
        self.allPointsView.layer.cornerRadius = 5
        self.validPointsView.layer.cornerRadius = 5
        
    }

}
