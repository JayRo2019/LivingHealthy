//
//  QuizViewController.swift
//  HealthyLiving
//
//  Created by Shrey Agarwal on 7/25/20.
//  Copyright © 2020 HobbyHacksHackathon. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var nextButton: UIButton!
    
    var questionModel:Questions!
    var questionNumber:Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //initialize a new questionModel
        questionModel = Questions()
        
        //start at question 0
        questionNumber = 0
        
        //show first question
        showQuestion()
        
    }
    
    //show the current question
    func showQuestion(){
        questionLabel.text = questionModel.questions[questionNumber]
        
        textField.text = ""
        
        
    }
    
    func storeAnswer(){
        //store answer in questionModel
        questionModel.answers.append(textField.text!)
        
    }
    
    @IBAction func nextAction(_ sender: Any) {
        //store the answer
        storeAnswer()
        
        //update question number
        questionNumber += 1
        
        //check if we're at second to last question
        //change button to "finish quiz"
        if (questionNumber == questionModel.questions.count - 1) {
            nextButton.setTitle("Finish Quiz", for: .normal)
        }
        
        //check if we're at last question
        //dismiss view controller
        if (questionNumber >= questionModel.questions.count) {
            print(questionModel.answers)
            
            //pass the answer data to profile VC
            
            
            //dismiss QuizVC
            self.dismiss(animated: true, completion: nil)
        } else {
        //go to next question
        showQuestion()
        }
        
        
        
    }
    //make an array with the questions
    //store answers
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
