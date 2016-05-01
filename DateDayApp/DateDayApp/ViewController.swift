//
//  ViewController.swift
//  DateDayApp
//
//  Created by Deepak Singh on 17/04/16.
//  Copyright © 2016 Deepak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var headlbl: UILabel!
    @IBOutlet weak var dtpick: UIDatePicker!
 
    @IBOutlet weak var lblsup: UILabel!
    
    @IBAction func BtnSup(sender: AnyObject) {
        lblsup.text = "Created by Deepak"
    }
    @IBOutlet weak var lbl: UILabel!
    
    @IBAction func BtnClick(sender: AnyObject) {
        lbl.text = "Deepak";
        // grabing date from date picker through date property
        let date:NSDate = dtpick.date
        // format the date. look at format method.
        let formatter:NSDateFormatter = NSDateFormatter()
        formatter.dateFormat = "EEEE"
        lbl.text = "The day is...\(formatter.stringFromDate(date))"
    
    }
    
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
            view.endEditing(true)
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

