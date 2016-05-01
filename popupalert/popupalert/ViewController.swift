//
//  ViewController.swift
//  popupalert
//
//  Created by Deepak Singh on 17/04/16.
//  Copyright © 2016 Deepak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // pop up alert message when the button is clicked
    @IBAction func btnpop(sender: AnyObject) {
        let alert:UIAlertController = UIAlertController(title: "Button Tapped!", message: "A button was tapped on the screen", preferredStyle: <#T##UIAlertControllerStyle#>)
        let action:UIAlertAction = UIAlertAction(title: "Done", style: <#T##UIAlertActionStyle#>, { (a:UIAlertAction) -> void in
            print("item selected");
            };
            
            alert.addaction(action)
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

