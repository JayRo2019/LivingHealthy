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
    static var areas:String
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var goalLabel: UILabel!
    @IBOutlet weak var workoutLevelLabel: UILabel!
    @IBOutlet weak var targetedAreasLabel: UILabel!
    
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
        displayData()
    }
    
    func displayData(){
        ProfileViewController.areas = profileData[4]
        nameLabel.text = "\(profileData[0])'s Stats:"
        weightLabel.text = "Weight: \(profileData[1]) kgs"
        heightLabel.text = "Height: \(profileData[2]) cm"
        bmiLabel.text = calculateBMI()
        workoutLevelLabel.text = "Workout goal: \(profileData[3])"
        targetedAreasLabel.text = "Targeted Area: \(profileData[4])"
        goalLabel.text = "\"\(profileData[5])\""
        
        
    }

    func calculateBMI() -> String{
        
        let kg = Double(profileData[1])!
        let meters = (Double(profileData[2])!)/100.0
        let meters2 = pow(meters, 2)
        let bmi = kg/meters2
        
        return "BMI: \(bmi)"
        
        
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
