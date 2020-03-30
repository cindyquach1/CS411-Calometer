//
//  IntakeViewController.swift
//  Notes
//
//  Created by Cindy Quach on 3/30/20.
//  Copyright © 2020 Apple Developer. All rights reserved.
//

import UIKit

class IntakeViewController: UIViewController, UINavigationControllerDelegate, UITextFieldDelegate {
    
    
    @IBOutlet var CalorieIntakeTextField: UITextField!
    @IBOutlet var WaterIntakeTextField: UITextField!
    @IBOutlet var SugarIntakeTextField: UITextField!


    var caloriesG: String!
    var waterG: String!
    var sugarG: String!
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let HomeVC = segue.destination as? HomepageViewController else { return }
        let calorieIntake = " \(String(describing: CalorieIntakeTextField.text!)) "
        let calorieProgress = caloriesG + " /" + calorieIntake


        let waterIntake = " \(String(describing: WaterIntakeTextField.text!)) "
        let waterProgress = waterG + " /" + waterIntake

        let sugarIntake = " \(String(describing: SugarIntakeTextField.text!)) "
        let sugarProgress = sugarG + " /" + sugarIntake
        
        HomeVC.CG = calorieProgress
        HomeVC.WG = waterProgress
        HomeVC.SG = sugarProgress
        
    }
}
