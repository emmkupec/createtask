//
//  PostViewController.swift
//  create task
//
//  Created by emma kupec on 2/19/18.
//  Copyright © 2018 emma kupec. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth
import FirebaseDatabase

class PostViewController: UIViewController {

    //button that takes the user back to the home page
    @IBAction func backToHomeButton(_ sender: Any) {
        performSegue(withIdentifier: "backHomeSegue", sender: self)
        
    }
    
    //text field that sends strings to the Firebase Database
    @IBOutlet weak var toDatabaseTextField: UITextField!
    
    //label that displays strings from the database
    @IBOutlet weak var databaseLabel: UILabel!
    
    var ref: DatabaseReference?
    var databaseHandle:DatabaseHandle?
    
    
    //post button sends the string to the database
    @IBAction func postButton(_ sender: Any) {
        
        ref = Database.database().reference()
        
    ref?.child("list").childByAutoId().setValue(toDatabaseTextField.text) //text field put into database text
        
        ref?.child("list").observe(.childAdded, with: { (snapshot) in
            let post = snapshot.value as? String
            self.databaseLabel.text = post
            
            
        })
        
        
        
        
        
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
