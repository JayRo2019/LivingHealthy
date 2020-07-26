//
//  HighIntensityViewController.swift
//  HealthyLiving
//
//  Created by Shrey Agarwal on 7/25/20.
//  Copyright © 2020 HobbyHacksHackathon. All rights reserved.
//

import UIKit

class HighIntensityViewController: UIViewController {


    @IBOutlet weak var image3: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    var text:String? = ProfileViewController.areas
    
    enum Area {
        case arms
        case stomach
        case legs
    }
    
    let dataModel = WorkoutData()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        image1.alpha = 0
        image2.alpha = 0
        image3.alpha = 0
        checkInfo()
    }
    
    @IBAction func backPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    func checkInfo(){
        if text == "Arms"{
            displayInfo(area: .arms)
        } else if text == "Stomach" {
            displayInfo(area: .stomach)
        } else if text == "Legs" {
            displayInfo(area: .legs)
        }
    }
    
    func displayInfo(area:Area){
        if (area == .arms){
        label1.text = dataModel.highArms[0]
        label2.text = dataModel.highArms[1]
        label3.text = dataModel.highArms[2]
        image1.alpha = 1
        image2.alpha = 1
        image3.alpha = 1
        }
        
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
