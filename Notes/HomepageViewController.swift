//
//  HomepageViewController.swift
//  Notes
//
//  Created by Cindy Quach on 3/29/20.
//  Copyright © 2020 Apple Developer. All rights reserved.
//

import UIKit

class HomepageViewController: UIViewController, UINavigationControllerDelegate, UITextFieldDelegate {
    
    @IBOutlet var CaloriesProgressLabel: UILabel!
    @IBOutlet var WaterProgressLabel: UILabel!
    @IBOutlet var SugarProgressLabel: UILabel!
    
    @IBOutlet var CaloriesLeftLabel: UILabel!
    @IBOutlet var WaterLeftLabel: UILabel!
    @IBOutlet var SugarLeftLabel: UILabel!
    
    var CG: String!
    var WG: String!
    var SG: String!
    var CLeft: String!
    var WLeft: String!
    var SLeft: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        CaloriesProgressLabel.text = CG
        WaterProgressLabel.text = WG
        SugarProgressLabel.text = SG
        CaloriesLeftLabel.text = CLeft
        WaterLeftLabel.text = WLeft
        SugarLeftLabel.text = SLeft
        
        
    }
}
