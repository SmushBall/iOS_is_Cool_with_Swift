//
//  ViewController.swift
//  pickercontrol
//
//  Created by Deepak Singh on 17/04/16.
//  Copyright © 2016 Deepak. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UIPickerViewDataSource, UIPickerViewDelegate {

    let days:[String] = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday" ];
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
// for the component of pickerview. here we have 1 component
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    // for the number of items in each component
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return days.count
    }
    // for displaying the title of each items in the component
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return days[row]
    }
    // for the delegate, once an item is selected, event much be delegated.
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("\(days[row])")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

