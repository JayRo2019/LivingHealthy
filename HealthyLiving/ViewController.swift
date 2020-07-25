//
//  ViewController.swift
//  HealthyLiving
//
//  Created by J-Ro on 7/25/20.
//  Copyright © 2020 HobbyHacksHackathon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // label and text fields
    @IBOutlet weak var appLabel: UILabel!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    // code for signInClicked button
    @IBAction func signInClicked(_ sender: Any) {
        
        // TEST SEGUE
        performSegue(withIdentifier: "toProfileVC", sender: nil)
    }
    
    // code for signUpClicked button
    @IBAction func signUpClicked(_ sender: Any) {
        
        
    }
    
    

}

