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

class HomeViewController: UIViewController {

    
    @IBAction func toPostGesture(_ sender: Any) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "sbPost")
        self.present(vc!, animated: true, completion: nil)
        
        
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
