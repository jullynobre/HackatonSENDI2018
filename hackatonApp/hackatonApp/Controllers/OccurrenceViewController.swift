//
//  OccurrenceViewController.swift
//  hackatonApp
//
//  Created by Jully Nobre on 18/11/18.
//  Copyright © 2018 Jully Nobre. All rights reserved.
//

import UIKit

class OccurrenceViewController: UIViewController {

    @IBOutlet weak var postImageView: UIImageView!
    @IBOutlet weak var editImageButton: UIButton!
    
    @IBOutlet weak var coordinatesLabel: UILabel!
    @IBOutlet weak var coordinatesTextField: UITextField!
    
    @IBOutlet weak var postLabel: UILabel!
    @IBOutlet weak var postTextField: UITextField!
    
    @IBOutlet weak var saveButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        formatInterface()
    }
    func formatInterface() {
        //ImageView
        self.postImageView.layer.cornerRadius = 80
        self.postImageView.backgroundColor = UIColor.groupTableViewBackground
        //Buttons
        self.editImageButton.layer.cornerRadius = 23
        self.saveButton.layer.cornerRadius = 20
        //TextFields
        self.postTextField.delegate = self
        self.postTextField.borderStyle = .roundedRect
        self.coordinatesTextField.borderStyle = .roundedRect
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func didTapEditImageButton(_ sender: Any) {
        
    }
}
extension OccurrenceViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
