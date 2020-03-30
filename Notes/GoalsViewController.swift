//
//  GoalsViewController.swift
//  Notes
//
//  Created by Cindy Quach on 3/29/20.
//  Copyright © 2020 Apple Developer. All rights reserved.
//

import UIKit

class GoalsViewController: UIViewController, UINavigationControllerDelegate, UITextFieldDelegate {
    
    @IBOutlet var CaloriesTextField: UITextField!
    
    @IBOutlet var SugarTextField: UITextField!
    
    @IBAction func NextButton(_ sender: UIButton) {
        let calories = " \(String(describing: CaloriesTextField.text)) "
       // let water = " \(String(describing: WaterTextField.text)) "
        let sugar = " \(String(describing: SugarTextField.text)) "
        
    }
    
}
