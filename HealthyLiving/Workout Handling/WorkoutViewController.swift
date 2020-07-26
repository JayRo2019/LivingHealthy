//
//  WorkoutViewController.swift
//  HealthyLiving
//
//  Created by J-Ro on 7/25/20.
//  Copyright © 2020 HobbyHacksHackathon. All rights reserved.
//

import UIKit

class WorkoutViewController: UIViewController, receiveFromProfile {
    
    var text:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    
    func canReceive(text: String) {
        self.text = text
    }
    
    
    //get the targeted areas
    //display workout accordingly

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
