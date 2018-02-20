//
//  LoginViewController.swift
//  create task
//
//  Created by emma kupec on 2/19/18.
//  Copyright © 2018 emma kupec. All rights reserved.
//

import UIKit
import FirebaseDatabase
import Firebase
import FirebaseAuth

class LoginViewController: UIViewController {

    //user email text field
    @IBOutlet weak var loginEmailTextField: UITextField!
    
    //user password text field
    @IBOutlet weak var loginPasswordTextField: UITextField!
    
    //to sign up page if user is not yet signed up
    @IBAction func toSignUpButton(_ sender: Any) {
        performSegue(withIdentifier: "backToLoginButton", sender: self)
    }
    
    //log in user with email and password
    @IBAction func loginAction(_ sender: Any) {
        
        if loginEmailTextField.text == "" || loginPasswordTextField.text == "" {
            
            let alertController = UIAlertController(title: "Error", message: "Please enter your Email or Password.", preferredStyle: .alert)
            
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(defaultAction)
            
            present(alertController, animated: true, completion: nil)
            
        } else {
            
            Auth.auth().signIn(withEmail: loginEmailTextField.text!, password: loginPasswordTextField.text!)
            
          //  Auth.auth().signIn(withEmail: loginEmailTextField.text!, password: loginPasswordTextField.text!) { (user, error) in
                
                let vc = self.storyboard?.instantiateViewController(withIdentifier: "sbHome")
                self.present(vc!, animated: true, completion: nil)
 
                
            }
            
            
            
            
        
        
        
        
        
        
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

