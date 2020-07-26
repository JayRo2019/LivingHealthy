//
//  SettingsViewController.swift
//  HealthyLiving
//
//  Created by J-Ro on 7/25/20.
//  Copyright © 2020 HobbyHacksHackathon. All rights reserved.
//

import UIKit
import Firebase

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func logoutClicked(_ sender: Any) {
        do {
            try Auth.auth().signOut()
            self.performSegue(withIdentifier: "toViewController", sender: nil)
        } catch {
            print("error")
        }
    }
    
}
