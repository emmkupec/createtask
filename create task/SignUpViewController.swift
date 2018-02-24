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

class SignUpViewController: UIViewController {
 
    //email text field
    @IBOutlet weak var emailTextField: UITextField!
    
    //password text field
    @IBOutlet weak var passwordTextField: UITextField!
    
    //confirm password text field
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    
    //sign up sequence begins, checks to see if all text fields have entries, passwords match, then creates user
    @IBAction func signUpButton(_ sender: Any) {
      
        print("test")
        
        if emailTextField.text == "" || passwordTextField.text == "" {
        
            print("denied1")
            
            let alertController1 = UIAlertController(title: "Error", message: "Please Enter Your Email or Password.", preferredStyle: .alert)
            
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController1.addAction(defaultAction)
            
            present(alertController1, animated: true, completion: nil)
        
            
            
        } else {
            
            print("pass1")

        }
        
        
            if confirmPasswordTextField.text == "" {
                
                 print("denied2")
                
                let alertController2 = UIAlertController(title: "Error", message: "Please Confirm Password.", preferredStyle: .alert)
                
                let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                alertController2.addAction(defaultAction)
                
                present(alertController2, animated: true, completion: nil)
                
               
                
                
            } else {
                
                print("pass2")

            }
        
                if passwordTextField.text == "" && confirmPasswordTextField.text != passwordTextField.text {
                   
                     print("denied3")
                    
                    let alertController3 = UIAlertController(title: "Error", message: "Your Passwords do not match.", preferredStyle: .alert)
                    
                    let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                    alertController3.addAction(defaultAction)
                    
                    present(alertController3, animated: true, completion: nil)
                    
                   
                    
                } else {
                 
                    Auth.auth().createUser(withEmail: emailTextField.text!, password: passwordTextField.text!) 
                    // Auth.auth().createUser(withEmail: emailTextField.text!, password: passwordTextField.text!) { (user, error) in }
                    
                  print("Welcome to the team")
                    
                    performSegue(withIdentifier: "usernameSegue", sender: self)
                    
                    print("segue")
                    
                   // let vc = self.storyboard?.instantiateViewController(withIdentifier: "sbUsername")
                  //  self.present(vc!, animated: true, completion: nil)
                    
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

