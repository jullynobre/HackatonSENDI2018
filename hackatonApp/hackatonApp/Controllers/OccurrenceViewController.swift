//
//  OccurrenceViewController.swift
//  hackatonApp
//
//  Created by Jully Nobre on 18/11/18.
//  Copyright © 2018 Jully Nobre. All rights reserved.
//

import UIKit
import MapKit

class OccurrenceViewController: UIViewController {

    @IBOutlet weak var postImageView: UIImageView!
    @IBOutlet weak var editImageButton: UIButton!
    
    @IBOutlet weak var coordinatesLabel: UILabel!
    @IBOutlet weak var coordinatesTextField: UITextField!
    
    @IBOutlet weak var postLabel: UILabel!
    @IBOutlet weak var postTextField: UITextField!
    
    @IBOutlet weak var saveButton: UIButton!
    
    var imagePicker: UIImagePickerController!
    
    var locationManager = CLLocationManager()
    var currentLocation: CLLocationCoordinate2D?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        formatInterface()
        
        self.locationManager.delegate = self
        
        startUpdatingLocation()
    }
    func startUpdatingLocation() {
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
    func formatInterface() {
        //ImageView
        self.postImageView.layer.cornerRadius = 80
        self.postImageView.backgroundColor = UIColor.groupTableViewBackground
        self.postImageView.clipsToBounds = true
        //Buttons
        self.editImageButton.layer.cornerRadius = 23
        self.saveButton.layer.cornerRadius = 20
        //TextFields
        self.postTextField.delegate = self
        self.postTextField.borderStyle = .roundedRect
        self.coordinatesTextField.borderStyle = .roundedRect
    }

    @IBAction func didTapEditImageButton(_ sender: Any) {
        self.imagePicker = UIImagePickerController()
        self.imagePicker.delegate = self
        self.imagePicker.sourceType = .camera
        present(imagePicker, animated: true, completion: nil)
    }
}

extension OccurrenceViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        self.imagePicker.dismiss(animated: true, completion: nil)
        self.postImageView.image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
        
        if let location = self.currentLocation {
            self.coordinatesTextField.text =  "\(location.latitude), \(location.longitude)"
        }
    }
}

extension OccurrenceViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

extension OccurrenceViewController: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        self.currentLocation = locations.last!.coordinate
    }
}
