//
//  ConversionViewController.swift
//  WorldTrotter
//
//  Created by Aiello, Anthony M (aiell016) on 2/26/19.
//  Copyright © 2019 Tony Aiello. All rights reserved.
//

import UIKit

class ConversionViewController : UIViewController {
    // I will use as a data output field
    @IBOutlet var celsiusLabel: UILabel!
    
    @IBOutlet var textField: UITextField!
    
    // I want to be notified when sonmoeone enters a value in the text field
    @IBAction func fahrenheitFieldEditingChanged(_ textField:  UITextField) {
        
        if let text = textField.text, !text.isEmpty {
            
            celsiusLabel.text = text
        } else {
            celsiusLabel.text = "???"
        }
        
        
    }
    
    // Dismiss the keyboard
    @IBAction func dismissKeyboard(_ sender: UITapGestureRecognizer) {
        textField.resignFirstResponder()
    }
    
    
    
    
}

