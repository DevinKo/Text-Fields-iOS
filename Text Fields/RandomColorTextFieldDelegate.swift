//
//  RandomColorTextFieldDelegate.swift
//  Text Fields
//
//  Created by Kevin Do on 10/26/17.
//  Copyright © 2017 Kevin Do. All rights reserved.
//

import Foundation
import UIKit

// MARK: - RandomColorTextFieldDelegate: NSObject, UITextFieldDelegate

class RandomColorTextFieldDelegate: NSObject, UITextFieldDelegate {
    
    let colors = [UIColor.red,
                  UIColor.orange, UIColor.yellow,
                  UIColor.green, UIColor.blue,
                  UIColor.purple, UIColor.brown];
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        textField.textColor = self.randomColor()
        
        return true
    }
    
    func randomColor() -> UIColor {
        let randomIndex = Int(arc4random() % UInt32(colors.count))
        
        return colors[randomIndex]
    }
}
