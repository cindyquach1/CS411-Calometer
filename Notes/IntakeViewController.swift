//
//  IntakeViewController.swift
//  Starfit
//
//  Created by Cindy Quach and Victoria Tran on 3/30/20.
//  Copyright © 2020 Apple Developer. All rights reserved.
//

import UIKit


//Intake View Controller file
class IntakeViewController: UIViewController, UINavigationControllerDelegate, UITextFieldDelegate {
    
    @IBOutlet var CalorieIntakeTextField: UITextField!
    @IBOutlet var WaterIntakeTextField: UITextField!
    @IBOutlet var SugarIntakeTextField: UITextField!

    var caloriesG: String!
    var waterG: String!
    var sugarG: String!
    
//Sends information from this page to the next: HomepageViewController
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let HomeVC = segue.destination as? HomepageViewController else { return }
        let calInt: Int? = Int(caloriesG)
        let waterInt: Int? = Int(waterG)
        let sugarInt: Int? = Int(sugarG)

//Calculates the remaining calories, ounces, and grams
        let cResult = Int(CalorieIntakeTextField.text!)! - calInt!
        let wResult = Int(WaterIntakeTextField.text!)! - waterInt!
        let sResult = Int(SugarIntakeTextField.text!)! - sugarInt!

        
        let calorieIntake = " \(String(describing: CalorieIntakeTextField.text!)) "
        let calorieProgress = caloriesG + " /" + calorieIntake

        let waterIntake = " \(String(describing: WaterIntakeTextField.text!)) "
        let waterProgress = waterG + " /" + waterIntake

        let sugarIntake = " \(String(describing: SugarIntakeTextField.text!)) "
        let sugarProgress = sugarG + " /" + sugarIntake
        
//Sends information to homepage
        HomeVC.CG = calorieProgress
        HomeVC.WG = waterProgress
        HomeVC.SG = sugarProgress
        HomeVC.CLeft = String(cResult)
        HomeVC.WLeft = String(wResult)
        HomeVC.SLeft = String(sResult)
        
        
    }
}
