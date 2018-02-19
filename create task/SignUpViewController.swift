//
//  ViewController.swift
//  create task
//
//  Created by emma kupec on 2/19/18.
//  Copyright © 2018 emma kupec. All rights reserved.
//


import UIKit
import Firebase
import FirebaseDatabase
import FirebaseAuth

class ViewController: UIViewController {
 
    //email text field
    @IBOutlet weak var emailTextField: UITextField!
    
    //password text field
    @IBOutlet weak var passwordTextField: UITextField!
    
    //confirm password text field
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    
    //sign up sequence begins, checks to see if all text fields have entries, passwords match, then creates user
    @IBAction func signUpButton(_ sender: Any) {
      
        print("start")
        
        if emailTextField.text == "" || passwordTextField.text == "" {
        
            let alertController = UIAlertController(title: "Error", message: "Please Enter Your Email or Password.", preferredStyle: .alert)
            
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(defaultAction)
            
            present(alertController, animated: true, completion: nil)
        
        } else {
        
            if confirmPasswordTextField.text == "" {
                
                let alertController = UIAlertController(title: "Error", message: "Please Confirm Password.", preferredStyle: .alert)
                
                let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                alertController.addAction(defaultAction)
                
                present(alertController, animated: true, completion: nil)
                
                
            } else {
                
                if passwordTextField.text != confirmPasswordTextField.text {
                   
                    let alertController = UIAlertController(title: "Error", message: "Your Passwords do not match.", preferredStyle: .alert)
                    
                    let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                    alertController.addAction(defaultAction)
                    
                    present(alertController, animated: true, completion: nil)
                    
                } else {
                 
                     Auth.auth().createUser(withEmail: emailTextField.text!, password: passwordTextField.text!) { (user, error) in }
                    
                  print("Welcome to the team")
                    
                    let vc = self.storyboard?.instantiateViewController(withIdentifier: "sbUsername")
                    self.present(vc!, animated: true, completion: nil)
                }
                    
                    
                }
    
            }

        }
        
    
        
        
        
        
    
    
  //to login page from sign up
@IBAction func toLoginButton(_ sender: Any) {
    performSegue(withIdentifier: "toLoginSegue", sender: self)
    }
 
    
    
    
    
    
    
    
    
    
    
    
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

