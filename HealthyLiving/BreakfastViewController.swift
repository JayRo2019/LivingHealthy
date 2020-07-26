//
//  BreakfastViewController.swift
//  HealthyLiving
//
//  Created by Shrey Agarwal on 7/26/20.
//  Copyright © 2020 HobbyHacksHackathon. All rights reserved.
//

import UIKit

class BreakfastViewController: UIViewController {

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        label1.text = "HIGH CARB\nProtein Oatmeal: \n1/3 cup oats topped with 1 scoop protein powder, 1 tablespoon flax seeds, 1 tablespoon chia seeds and 1/2 cup berries. \nPer serving: 329 calories, 21 g protein, 11 g fat, 50 g carbs, 8 g fiber"
        label2.text = "LOW CARB\nFeta and veggies egg white omelette:\n Heat olive oil in a small frying pan, add 3 egg whites and cook, swirling with a fork as the eggs set. When they are still slightly runny in the middle, scatter over some vegetables and 25g crumbled feta, then fold the omelette in half. Cook for 1 min more before sliding onto a plate. \n121 calories, 5g fat, 20mg cholesterol"

    }
    
    @IBAction func backPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
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
