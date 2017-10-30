//
//  ViewController.swift
//  Text Fields
//
//  Created by Kevin Do on 10/26/17.
//  Copyright © 2017 Kevin Do. All rights reserved.
//

import UIKit

// MARK: - ViewController: UIViewController, UITextFieldDelegate

class ViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: Properties
    
    let zipCodeDelegate = ZipCodeTextFieldDelegate()
    let cashDelegate = CashTextFieldDelegate()
    let randomColorDelegate = RandomColorTextFieldDelegate()
    
    // MARK: Outlets
    
    @IBOutlet weak var zipCodeTextField: UITextField!
    @IBOutlet weak var cashTextField: UITextField!
    @IBOutlet weak var randomColorTextField: UITextField!
    @IBOutlet weak var editingSwitch: UISwitch!
    
    // MARK: Life Cycle
    
    override func viewDidLoad() {
        self.zipCodeTextField.delegate = self.zipCodeDelegate
        self.cashTextField.delegate = self.cashDelegate
        self.randomColorTextField.delegate = self.randomColorDelegate
    
        self.editingSwitch.setOn(false, animated: false)
    }
    
    // MARK: Text Field Delegate
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        return self.editingSwitch.isOn
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true;
    }
    
    // MARK: Actions
    
    @IBAction func toggleTheTextEditor(_ sender: AnyObject) {
        
        if !(sender as! UISwitch).isOn {
            self.randomColorTextField.resignFirstResponder()
        }
    }
}

