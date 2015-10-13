//
//  ViewController.swift
//  TextValidation
//
//  Created by dilip chaurasiya on 10/13/15.
//  Copyright © 2015 dilip chaurasiya. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    
    let status: Bool = true

    @IBOutlet weak var PropertyInput: UITextField!
    @IBOutlet weak var r1: UITextField!
    @IBOutlet weak var r2: UITextField!
    
    @IBOutlet weak var datepicker: UITextField!
    @IBAction func datepicker(sender: AnyObject) {
        
        let DatePickerView : UIDatePicker = UIDatePicker()
        DatePickerView.datePickerMode = UIDatePickerMode.Date
        datepicker.inputView = DatePickerView
        DatePickerView.addTarget(self, action: Selector("handleDatePicker:"), forControlEvents: UIControlEvents.ValueChanged)
    }
    func handleDatePicker(sender: UIDatePicker) {
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "dd MMM yyyy"
        datepicker.text = dateFormatter.stringFromDate(sender.date)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func submit(sender: AnyObject) {
        
        if((PropertyInput.text?.isEmpty == status)){
            
           // PropertyInput.layer.borderColor = UIColor.redColor().CGColor
            PropertyInput.text = "Enter Property";
            PropertyInput.textColor = UIColor.redColor();
            
        }
        else
        {
            let alert = UIAlertController(title: "", message: "", preferredStyle:.Alert)
            let cancelAction = UIAlertAction(title: "cancel", style: .Cancel, handler: nil)
            alert.addAction(cancelAction)
            self.presentViewController(alert, animated: true, completion: nil)
            
        }
    }

    func textFieldDidBeginEditing(textField: UITextField) {
        
    PropertyInput.textColor = UIColor.blackColor()
    
    }
    
}

