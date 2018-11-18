//
//  ProfileViewController.swift
//  hackatonApp
//
//  Created by Jully Nobre on 18/11/18.
//  Copyright © 2018 Jully Nobre. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var cpfTextField: UITextField!
    
    @IBOutlet weak var requestRewardButton: UIButton!
    
    @IBOutlet weak var pointsView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let view = UINib(nibName: "PointsView", bundle: .main).instantiate(withOwner: nil, options: nil).first as! PointsView
        view.frame = self.pointsView.bounds
        self.pointsView.addSubview(view)
        
        formatInterface()
    }
    func formatInterface() {
        //Buttons
        self.requestRewardButton.layer.cornerRadius = 20
        //TextFields
        self.nameTextField.borderStyle = .roundedRect
        self.emailTextField.borderStyle = .roundedRect
        self.cpfTextField.borderStyle = .roundedRect
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
