//
//  UsernameViewController.swift
//  create task
//
//  Created by emma kupec on 2/19/18.
//  Copyright © 2018 emma kupec. All rights reserved.
//

import UIKit

class UsernameViewController: UIViewController {

    var userlogged = String?.self
    
    //the user creates a unique username
    @IBOutlet weak var usernameTextField: UITextField!
    
    //stores username in variable "user" and moves to home page
    @IBAction func createUsernameButton(_ sender: Any) {
        
        if usernameTextField.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Please enter a Username.", preferredStyle: .alert)
            
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(defaultAction)
            
            present(alertController, animated: true, completion: nil)
            
        } else {
            
        var username = usernameTextField.text
        var userlogged = (username)
            print(userlogged)
           
            performSegue(withIdentifier: "usernameCreatedSegue", sender: self)
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
