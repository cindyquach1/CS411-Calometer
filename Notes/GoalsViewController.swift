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
    @IBOutlet var WaterTextField: UITextField!
    @IBOutlet var SugarTextField: UITextField!

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let intakeVC = segue.destination as? IntakeViewController else {return}
        intakeVC.caloriesG = CaloriesTextField.text
        intakeVC.waterG = WaterTextField.text
        intakeVC.sugarG = SugarTextField.text
    }
    
}
