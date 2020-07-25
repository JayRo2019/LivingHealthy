//
//  ViewController.swift
//  HealthyLiving
//
//  Created by J-Ro on 7/25/20.
//  Copyright © 2020 HobbyHacksHackathon. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // label and text fields
    @IBOutlet weak var appLabel: UILabel!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    // cut everything from alert and paste into function
      func makeAlert(titleInput:String, messageInput:String) {
          let alert = UIAlertController(title: "Error", message: "Username/Password Missing", preferredStyle: UIAlertController.Style.alert)
          let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
          alert.addAction(okButton)
          self.present(alert, animated: true, completion: nil)
      }
    
    // code for signInClicked button
    @IBAction func signInClicked(_ sender: Any) {
        if emailTextField.text != "" && passwordTextField.text != "" {
            Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!) { (authdata, error) in
                if error != nil {
                    self.makeAlert(titleInput: "Error", messageInput: error?.localizedDescription ?? "Error")
                } else {
                    self.performSegue(withIdentifier: "toProfileVC", sender: nil)
                }
            }
        } else {
            self.makeAlert(titleInput: "Error", messageInput: "Email/Password Missing")
        }
    }
    
    // code for signUpClicked button
    @IBAction func signUpClicked(_ sender: Any) {
        
        if emailTextField.text != "" && passwordTextField.text != "" {
            
           // authenticates user if no error
           Auth.auth().createUser(withEmail: emailTextField.text!, password: passwordTextField.text!) { (authdata, error) in
               if error != nil {
                   self.makeAlert(titleInput: "Error", messageInput: error?.localizedDescription ?? "Error")
               } else {
                   // if no error, go to Profile
                   self.performSegue(withIdentifier: "toProfileVC", sender: nil)
               }
            }
            } else {
                self.makeAlert(titleInput: "Error", messageInput: "Username/Password Missing")
            }
        }
    
    }
    
    



