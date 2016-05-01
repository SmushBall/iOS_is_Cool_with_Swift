//
//  ViewController.swift
//  First
//
//  Created by Deepak Singh on 16/04/16.
//  Copyright © 2016 Deepak. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var textField: UITextField!
    
    
    @IBOutlet weak var lbl: UILabel!
    
    
    @IBAction func Clickme(sender: AnyObject) {
        lbl.text = "Hi  \(textField.text!)!";
        textField.resignFirstResponder();
        // to hide the keyboard used in textField
    }
    
    // hide keyboard when eu touches any other part of screen
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        view.endEditing(true);
    }
    // Delegate example. when return is pressed, keyboard goes away.
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.textField.resignFirstResponder()
        return false
    }
    
    @IBOutlet weak var label: UILabel!
    @IBAction func ButtonWasClicked(sender: AnyObject) {
        print("I was clicked!");
        label.text = "Hi Everybody!";
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        textField.delegate = self
        /* a delegate is an object that is connected to other object and can receive its events */
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

