//
//  ViewController.swift
//  SwiftContacts
//
//  Created by Perry Davies on 09/02/2018.
//  Copyright © 2018 Perry Davies. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    var model = DataModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
         
    }
       
    @IBAction func buttonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "contact", sender: self)
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "contact"
        {
            var tvc = segue.destination as! TableViewController
            if let contacts = model.contacts
            {
                tvc.contacts = contacts
            }
            
         }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

}

