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
        
        self.allPointsView.layer.cornerRadius = 5
        self.validPointsView.layer.cornerRadius = 5
        
    }

}
