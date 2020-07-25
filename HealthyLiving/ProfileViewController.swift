//
//  ProfileViewController.swift
//  HealthyLiving
//
//  Created by J-Ro on 7/25/20.
//  Copyright © 2020 HobbyHacksHackathon. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController, CanReceive {
    
    var profileData:[String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // set profile VC as the delegate
        
    }
    //get the destination object
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToQuiz" {
            let destinationVC = segue.destination as! QuizViewController
            destinationVC.delegate = self
        }
    }
    
    
    //getting answer data from QuizVC
    func dataReceived(text: [String]) {
        profileData = text
        print(profileData)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
