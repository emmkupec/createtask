//
//  HomeViewController.swift
//  create task
//
//  Created by emma kupec on 2/19/18.
//  Copyright © 2018 emma kupec. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth
import FirebaseDatabase

class ViewController: UIViewController, UITableViewDataSource {

    //sends the strings from the text field to the database
    @IBOutlet weak var toDatabaseTextField: UITextField!
    
    //takes strings from the database and displays them in this label
    @IBOutlet weak var fromDatabaseLabel: UILabel!
    
    
    var ref: DatabaseReference?
    var databaseHandle:DatabaseHandle?
    
    //sends string to database
    @IBAction func postButton(_ sender: Any) {
        
            
            ref = Database.database().reference()
            
            ref?.child("list").childByAutoId().setValue(toDatabaseTextField.text) //text field put into database text
            
            ref?.child("list").observe(.childAdded, with: { (snapshot) in
                let post = snapshot.value as? String
                self.fromDatabaseLabel.text = post
                
                
            })
            
            
        }
        
        
        
        
        
    
    
    
    
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var data: [String] = []
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")! //1.
        
        let text = data[indexPath.row] //2.
        
        cell.textLabel?.text = text //3.
        
        return cell //4.
    }
    
    
    
   
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 0...1000 {
            data.append("\(i)")
        
        tableView.dataSource = (self as UITableViewDataSource)
        // Do any additional setup after loading the view.
    }
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

