//
//  SecondViewController.swift
//  To Do List
//
//  Created by RASHED on 6/3/17.
//  Copyright © 2017 RASHED. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var itemTextField: UITextField!
    
    
    @IBAction func add(_ sender: Any) {
        
        let itemsObject = UserDefaults.standard.object(forKey: "items")
        
        var items:NSMutableArray
        
        if let tempItems = itemsObject as? NSMutableArray {
           items = tempItems
            
            items.addObjects(from: [itemTextField.text!])
        
        }else{
           items = [itemTextField.text!]
        }
        
        UserDefaults.standard.set(items, forKey: "items")
        
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

